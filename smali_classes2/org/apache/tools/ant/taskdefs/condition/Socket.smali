.class public Lorg/apache/tools/ant/taskdefs/condition/Socket;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Socket.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private port:I

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 65
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking for listener at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/Socket;->log(Ljava/lang/String;I)V

    .line 70
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No port specified in socket condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No server specified in socket condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPort(I)V
    .locals 0

    .line 53
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    return-void
.end method
