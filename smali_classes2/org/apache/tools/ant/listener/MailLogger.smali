.class public Lorg/apache/tools/ant/listener/MailLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "MailLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/listener/MailLogger$Values;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field private buffer:Ljava/lang/StringBuffer;


# direct methods
.method public static synthetic $r8$lambda$lPLC6SNumYQw_Y_RjEgi35P9wz8()Ljava/util/Vector;
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private getMailerImplementation()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "jakarta.activation.DataHandler"

    .line 434
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "jakarta.mail.internet.MimeMessage"

    .line 435
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "org.apache.tools.ant.taskdefs.email.JakartaMimeMailer"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 439
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "Could not find Jakarta MIME mail: "

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    :try_start_1
    const-string v0, "javax.activation.DataHandler"

    .line 444
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "javax.mail.internet.MimeMessage"

    .line 445
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "org.apache.tools.ant.taskdefs.email.MimeMailer"
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 449
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "Could not find MIME mail: "

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    const-string v0, "org.apache.tools.ant.taskdefs.email.Mailer"

    return-object v0
.end method

.method private getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailLogger."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 328
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    if-eqz p3, :cond_1

    return-object p3

    .line 335
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Missing required parameter: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$buildFinished$0(Ljava/util/Map;Lorg/apache/tools/ant/Project;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-virtual {p2, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V
    .locals 2

    .line 457
    invoke-virtual {p2}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :goto_0
    const/4 v0, 0x1

    .line 458
    iget v1, p0, Lorg/apache/tools/ant/listener/MailLogger;->msgOutputLevel:I

    if-gt v0, v1, :cond_1

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/MailLogger;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private sendMail(Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    new-instance v0, Lorg/apache/tools/mail/MailMessage;

    .line 350
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->port()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    const-string v1, "Date"

    .line 351
    invoke-static {}, Lorg/apache/tools/ant/util/DateUtils;->getDateForHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->from()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailMessage;->from(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ", "

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Ljava/util/StringTokenizer;

    .line 356
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/mail/MailMessage;->replyto(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/mail/MailMessage;->to(Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailMessage;->setSubject(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "Content-Type"

    if-eqz v1, :cond_2

    .line 369
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 371
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; charset=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_2
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailMessage;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 376
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailMessage;->sendAndClose()V

    return-void
.end method

.method private sendMimeMail(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V
    .locals 4

    .line 389
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/listener/MailLogger;->getMailerImplementation()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/listener/MailLogger;

    .line 390
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/taskdefs/email/Mailer;

    .line 389
    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/Mailer;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 397
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHost(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->port()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPort(I)V

    .line 399
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->user()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setUser(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->password()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPassword(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSSL(Z)V

    .line 402
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setEnableStartTLS(Z)V

    .line 403
    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 404
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-direct {v2, p3}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 406
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setMimeType(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 408
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setCharset(Ljava/lang/String;)V

    .line 410
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setMessage(Lorg/apache/tools/ant/taskdefs/email/Message;)V

    .line 411
    new-instance p1, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->from()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFrom(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V

    .line 412
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setReplyToList(Ljava/util/Vector;)V

    .line 413
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 414
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setToList(Ljava/util/Vector;)V

    .line 415
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toCcList()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 416
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setCcList(Ljava/util/Vector;)V

    .line 417
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toBccList()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 418
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setBccList(Ljava/util/Vector;)V

    .line 419
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFiles(Ljava/util/Vector;)V

    .line 420
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSubject(Ljava/lang/String;)V

    .line 421
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHeaders(Ljava/util/Vector;)V

    .line 422
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->send()V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to initialise MIME mail: "

    .line 392
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/listener/MailLogger;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    return-void
.end method

.method private splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;-><init>()V

    .line 427
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    return-object p1
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "off"

    const-string v2, ""

    const-string v3, ".subject"

    const-string v4, ".body"

    const-string v5, ".bcc"

    const-string v6, ".cc"

    const-string v7, ".to"

    const-string v8, ".notify"

    .line 110
    invoke-super/range {p0 .. p1}, Lorg/apache/tools/ant/DefaultLogger;->buildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    .line 113
    invoke-virtual {v9}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v10

    .line 117
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    const-string v12, "MailLogger.properties.file"

    .line 118
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v12, :cond_0

    :try_start_0
    new-array v15, v14, [Ljava/lang/String;

    .line 122
    invoke-static {v12, v15}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    new-array v15, v14, [Ljava/nio/file/OpenOption;

    invoke-static {v12, v15}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    invoke-virtual {v11, v12}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v13, v12

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 127
    :goto_0
    invoke-static {v13}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 128
    throw v0

    :catch_0
    move-object v12, v13

    .line 127
    :catch_1
    :goto_1
    invoke-static {v12}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 131
    :cond_0
    invoke-virtual {v11}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v12

    new-instance v15, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;

    invoke-direct {v15, v10, v9, v11}, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Lorg/apache/tools/ant/Project;Ljava/util/Properties;)V

    .line 132
    invoke-interface {v12, v15}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 134
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    move v9, v14

    :goto_2
    if-eqz v9, :cond_2

    const-string v11, "success"

    goto :goto_3

    :cond_2
    const-string v11, "failure"

    .line 138
    :goto_3
    :try_start_2
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "on"

    invoke-direct {v1, v10, v8, v12}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    return-void

    .line 144
    :cond_3
    new-instance v8, Lorg/apache/tools/ant/listener/MailLogger$Values;

    invoke-direct {v8, v13}, Lorg/apache/tools/ant/listener/MailLogger$Values;-><init>(Lorg/apache/tools/ant/listener/MailLogger$1;)V

    const-string v12, "mailhost"

    const-string v15, "localhost"

    .line 145
    invoke-direct {v1, v10, v12, v15}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v8

    const-string v12, "port"

    const/16 v15, 0x19

    .line 149
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 147
    invoke-direct {v1, v10, v12, v15}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 146
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lorg/apache/tools/ant/listener/MailLogger$Values;->port(I)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v8

    const-string v12, "user"

    .line 150
    invoke-direct {v1, v10, v12, v2}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/apache/tools/ant/listener/MailLogger$Values;->user(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v8

    const-string v12, "password"

    .line 151
    invoke-direct {v1, v10, v12, v2}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/apache/tools/ant/listener/MailLogger$Values;->password(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v8

    const-string v12, "ssl"

    .line 152
    invoke-direct {v1, v10, v12, v0}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v8, v12}, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl(Z)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v8

    const-string v12, "starttls.enable"

    .line 154
    invoke-direct {v1, v10, v12, v0}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls(Z)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    const-string v8, "from"

    .line 156
    invoke-direct {v1, v10, v8, v13}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/listener/MailLogger$Values;->from(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    const-string v8, "replyto"

    .line 157
    invoke-direct {v1, v10, v8, v2}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-direct {v1, v10, v7, v13}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    invoke-virtual {v11, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-direct {v1, v10, v6, v2}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toCcList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-direct {v1, v10, v5, v2}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toBccList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    const-string v5, "mimeType"

    const-string v6, "text/plain"

    .line 161
    invoke-direct {v1, v10, v5, v6}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    const-string v5, "charset"

    .line 162
    invoke-direct {v1, v10, v5, v2}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    invoke-virtual {v11, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-direct {v1, v10, v4, v2}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_4

    const-string v3, "Build Success"

    goto :goto_4

    :cond_4
    const-string v3, "Build Failure"

    .line 164
    :goto_4
    invoke-direct {v1, v10, v2, v3}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->user()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->password()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls()Z

    move-result v2

    if-nez v2, :cond_5

    .line 170
    iget-object v2, v1, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/listener/MailLogger;->sendMail(Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V

    goto :goto_5

    .line 173
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, v1, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/listener/MailLogger;->sendMimeMail(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 176
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "MailLogger failed to send e-mail!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_5
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
