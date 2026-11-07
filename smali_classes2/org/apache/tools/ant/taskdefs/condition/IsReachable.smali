.class public Lorg/apache/tools/ant/taskdefs/condition/IsReachable;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsReachable.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x1e

.field public static final ERROR_BAD_TIMEOUT:Ljava/lang/String; = "Invalid timeout value"

.field public static final ERROR_BAD_URL:Ljava/lang/String; = "Bad URL "

.field public static final ERROR_BOTH_TARGETS:Ljava/lang/String; = "Both url and host have been specified"

.field public static final ERROR_NO_HOSTNAME:Ljava/lang/String; = "No hostname defined"

.field public static final ERROR_NO_HOST_IN_URL:Ljava/lang/String; = "No hostname in URL "

.field public static final ERROR_ON_NETWORK:Ljava/lang/String; = "network error to "

.field public static final METHOD_NAME:Ljava/lang/String; = "isReachable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG_NO_REACHABLE_TEST:Ljava/lang/String; = "cannot do a proper reachability test on this Java version"

.field private static final SECOND:I = 0x3e8

.field private static final WARN_UNKNOWN_HOST:Ljava/lang/String; = "Unknown host: "


# instance fields
.field private host:Ljava/lang/String;

.field private timeout:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/16 v0, 0x1e

    .line 94
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->timeout:I

    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public eval()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "No hostname in URL "

    .line 144
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->host:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No hostname defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->timeout:I

    if-ltz v1, :cond_6

    .line 150
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->host:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->host:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 160
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Both url and host have been specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Probing host "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->log(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 169
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Host address = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->log(Ljava/lang/String;I)V

    .line 178
    :try_start_2
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->timeout:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "network error to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->log(Ljava/lang/String;)V

    .line 184
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "host is"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v3, ""

    goto :goto_3

    :cond_5
    const-string v3, " not"

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reachable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->log(Ljava/lang/String;I)V

    return v0

    .line 171
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->log(Ljava/lang/String;)V

    return v0

    .line 148
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid timeout value"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->host:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 120
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->timeout:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReachable;->url:Ljava/lang/String;

    return-void
.end method
