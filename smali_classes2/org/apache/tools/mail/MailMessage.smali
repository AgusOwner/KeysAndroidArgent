.class public Lorg/apache/tools/mail/MailMessage;
.super Ljava/lang/Object;
.source "MailMessage.java"


# static fields
.field public static final DEFAULT_HOST:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_PORT:I = 0x19

.field private static final OK_DATA:I = 0x162

.field private static final OK_DOT:I = 0xfa

.field private static final OK_FROM:I = 0xfa

.field private static final OK_HELO:I = 0xfa

.field private static final OK_QUIT:I = 0xdd

.field private static final OK_RCPT_1:I = 0xfa

.field private static final OK_RCPT_2:I = 0xfb

.field private static final OK_READY:I = 0xdc


# instance fields
.field private final cc:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private in:Lorg/apache/tools/mail/SmtpResponseReader;

.field private out:Lorg/apache/tools/mail/MailPrintStream;

.field private port:I

.field private final replyto:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private final to:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "localhost"

    const/16 v1, 0x19

    .line 150
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x19

    .line 161
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 111
    iput v0, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    .line 117
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    .line 123
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->headers:Ljava/util/Map;

    .line 173
    iput p2, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    .line 174
    iput-object p1, p0, Lorg/apache/tools/mail/MailMessage;->host:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->connect()V

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendHelo()V

    return-void
.end method

.method static sanitizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_4

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_3

    :cond_0
    const/16 v6, 0x29

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    if-nez v2, :cond_3

    :goto_2
    add-int/lit8 v3, v1, 0x1

    goto :goto_3

    :cond_1
    if-nez v4, :cond_2

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v0, v2

    .line 373
    :goto_4
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bcc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendRcpt(Ljava/lang/String;)V

    return-void
.end method

.method public cc(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendRcpt(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->host:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    .line 380
    new-instance v0, Lorg/apache/tools/mail/MailPrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    .line 381
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/mail/MailPrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    .line 382
    new-instance v0, Lorg/apache/tools/mail/SmtpResponseReader;

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/mail/SmtpResponseReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    .line 383
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->getReady()V

    return-void
.end method

.method disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailPrintStream;->close()V

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    if-eqz v0, :cond_1

    .line 455
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/mail/SmtpResponseReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :catch_0
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 462
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method flushHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->headers:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/mail/MailMessage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/mail/MailMessage$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/mail/MailMessage;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 323
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    invoke-virtual {v0}, Lorg/apache/tools/mail/MailPrintStream;->println()V

    .line 324
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    invoke-virtual {v0}, Lorg/apache/tools/mail/MailPrintStream;->flush()V

    return-void
.end method

.method public from(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendFrom(Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lorg/apache/tools/mail/MailMessage;->from:Ljava/lang/String;

    return-void
.end method

.method public getPrintStream()Ljava/io/PrintStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setFromHeader()V

    .line 278
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setReplyToHeader()V

    .line 279
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setToHeader()V

    .line 280
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setCcHeader()V

    const-string v0, "X-Mailer"

    const-string v1, "org.apache.tools.mail.MailMessage (ant.apache.org)"

    .line 281
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendData()V

    .line 284
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->flushHeaders()V

    .line 285
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    return-object v0
.end method

.method getReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    invoke-virtual {v0}, Lorg/apache/tools/mail/SmtpResponseReader;->getResponse()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xdc

    .line 388
    filled-new-array {v1}, [I

    move-result-object v1

    .line 389
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->isResponseOK(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 390
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Didn\'t get introduction from server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isResponseOK(Ljava/lang/String;[I)Z
    .locals 6

    .line 441
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method synthetic lambda$flushHeaders$0$org-apache-tools-mail-MailMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    const-string v1, "%s: %s%n"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/mail/MailPrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public replyto(Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method send(Ljava/lang/String;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailPrintStream;->rawPrint(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    invoke-virtual {v0}, Lorg/apache/tools/mail/SmtpResponseReader;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/mail/MailMessage;->isResponseOK(Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 434
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected reply to command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public sendAndClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendDot()V

    .line 336
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendQuit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->disconnect()V

    .line 339
    throw v0
.end method

.method sendData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x162

    .line 412
    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "DATA"

    .line 413
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    return-void
.end method

.method sendDot()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfa

    .line 417
    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "\r\n."

    .line 418
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    return-void
.end method

.method sendFrom(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfa

    .line 402
    filled-new-array {v0}, [I

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAIL FROM: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/tools/mail/MailMessage;->sanitizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    return-void
.end method

.method sendHelo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa

    .line 397
    filled-new-array {v1}, [I

    move-result-object v1

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HELO "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    return-void
.end method

.method sendQuit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xdd

    .line 422
    filled-new-array {v0}, [I

    move-result-object v0

    :try_start_0
    const-string v1, "QUIT"

    .line 424
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Lorg/apache/tools/mail/ErrorInQuitException;

    invoke-direct {v1, v0}, Lorg/apache/tools/mail/ErrorInQuitException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method sendRcpt(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfa

    const/16 v1, 0xfb

    .line 407
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RCPT TO: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/tools/mail/MailMessage;->sanitizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    return-void
.end method

.method setCcHeader()V
    .locals 2

    .line 308
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/apache/tools/mail/MailMessage;->vectorToList(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setFromHeader()V
    .locals 2

    const-string v0, "From"

    .line 291
    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->from:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 185
    iput p1, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    return-void
.end method

.method setReplyToHeader()V
    .locals 2

    .line 296
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/apache/tools/mail/MailMessage;->vectorToList(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reply-To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Subject"

    .line 252
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setToHeader()V
    .locals 2

    .line 302
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/apache/tools/mail/MailMessage;->vectorToList(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public to(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendRcpt(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method vectorToList(Ljava/util/Vector;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ", "

    .line 314
    invoke-static {v0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
