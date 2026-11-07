.class public Lorg/apache/tools/ant/taskdefs/condition/Http;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Http.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final DEFAULT_REQUEST_METHOD:Ljava/lang/String; = "GET"

.field private static final ERROR_BEGINS:I = 0x190

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private errorsBeginAt:I

.field private followRedirects:Z

.field private readTimeout:I

.field private requestMethod:Ljava/lang/String;

.field private spec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    const-string v0, "GET"

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    const/16 v0, 0x190

    .line 52
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->errorsBeginAt:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->readTimeout:I

    return-void
.end method

.method private redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 3

    .line 166
    invoke-virtual {p1, p2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http"

    .line 171
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https"

    .line 172
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Redirection detected from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Protocol switch unsafe, not allowed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private request(Ljava/net/HttpURLConnection;Ljava/net/URL;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 149
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->readTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 150
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 151
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->isMoved(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Location"

    .line 152
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p2, v1}, Lorg/apache/tools/ant/taskdefs/condition/Http;->redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 156
    instance-of v2, p1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Following redirect from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;)V

    .line 158
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/condition/Http;->request(Ljava/net/HttpURLConnection;Ljava/net/URL;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public eval()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Result code for "

    const-string v1, "Invalid HTTP protocol: "

    .line 120
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;I)V

    .line 125
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    .line 127
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 128
    instance-of v6, v5, Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 129
    check-cast v5, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v5, v2}, Lorg/apache/tools/ant/taskdefs/condition/Http;->request(Ljava/net/HttpURLConnection;Ljava/net/URL;)I

    move-result v2

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " was "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;I)V

    if-lez v2, :cond_0

    .line 132
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->errorsBeginAt:I
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v2, v0, :cond_0

    move v4, v7

    :cond_0
    return v4

    :cond_1
    return v7

    :catch_0
    return v4

    :catch_1
    move-exception v0

    .line 135
    :try_start_2
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 141
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Badly formed URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No url specified in http condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorsBeginAt(I)V
    .locals 0

    .line 69
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->errorsBeginAt:I

    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 110
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->readTimeout:I

    :cond_0
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "GET"

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    return-void
.end method
