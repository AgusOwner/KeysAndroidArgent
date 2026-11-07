.class public Lorg/apache/tools/ant/taskdefs/email/EmailTask;
.super Lorg/apache/tools/ant/Task;
.source "EmailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/email/EmailTask$Encoding;
    }
.end annotation


# static fields
.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final MIME:Ljava/lang/String; = "mime"

.field public static final PLAIN:Ljava/lang/String; = "plain"

.field private static final SMTP_PORT:I = 0x19

.field public static final UU:Ljava/lang/String; = "uu"


# instance fields
.field private attachments:Lorg/apache/tools/ant/types/Path;

.field private bccList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private ccList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private failOnError:Z

.field private from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

.field private headers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/Header;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private ignoreInvalidRecipients:Z

.field private includeFileNames:Z

.field private message:Lorg/apache/tools/ant/taskdefs/email/Message;

.field private messageFileInputEncoding:Ljava/lang/String;

.field private messageMimeType:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private replyToList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private ssl:Z

.field private starttls:Z

.field private subject:Ljava/lang/String;

.field private toList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, "auto"

    .line 68
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    const-string v0, "localhost"

    .line 70
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->host:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->port:Ljava/lang/Integer;

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    .line 79
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    .line 85
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    .line 87
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    .line 89
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    .line 91
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    .line 94
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->headers:Ljava/util/Vector;

    .line 97
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    .line 99
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    .line 107
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    .line 110
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ignoreInvalidRecipients:Z

    return-void
.end method

.method private getMailerImplementation()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "jakarta.activation.DataHandler"

    .line 600
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "jakarta.mail.internet.MimeMessage"

    .line 601
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "org.apache.tools.ant.taskdefs.email.JakartaMimeMailer"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 605
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "Could not find Jakarta MIME mail: "

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    :try_start_1
    const-string v0, "javax.activation.DataHandler"

    .line 610
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "javax.mail.internet.MimeMessage"

    .line 611
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "org.apache.tools.ant.taskdefs.email.MimeMailer"
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 615
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "Could not find MIME mail: "

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    const-string v0, "org.apache.tools.ant.taskdefs.email.Mailer"

    return-object v0
.end method

.method private logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V
    .locals 1

    .line 623
    invoke-virtual {p2}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 624
    :goto_0
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

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public addBcc(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCc(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 380
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->createAttachments()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFrom(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    if-nez v0, :cond_0

    .line 250
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    return-void

    .line 248
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Emails can only be from one address"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMessage(Lorg/apache/tools/ant/taskdefs/email/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v0, :cond_0

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    return-void

    .line 235
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one message can be sent in an email"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addReplyTo(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTo(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createAttachments()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createHeader()Lorg/apache/tools/ant/taskdefs/email/Header;
    .locals 2

    .line 401
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/Header;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/email/Header;-><init>()V

    .line 402
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->headers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 13

    const-string v0, "Failed to send email: "

    .line 444
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "mime"

    .line 452
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v4, Lorg/apache/tools/ant/taskdefs/email/EmailTask;

    const-string v5, "auto"

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v9, v6

    goto :goto_3

    .line 454
    :cond_1
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getMailerImplementation()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Lorg/apache/tools/ant/taskdefs/email/Mailer;

    .line 454
    invoke-static {v3, v9, v10}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/email/Mailer;
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v8, "Using MIME mail"

    .line 458
    invoke-virtual {p0, v8, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v2

    goto :goto_2

    :catch_0
    move-exception v8

    move v9, v2

    goto :goto_1

    :catch_1
    move-exception v3

    move v9, v6

    move-object v12, v8

    move-object v8, v3

    move-object v3, v12

    :goto_1
    :try_start_4
    const-string v10, "Failed to initialise MIME mail: "

    .line 460
    invoke-direct {p0, v10, v8}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V
    :try_end_4
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    move-object v8, v3

    :goto_3
    const-string v3, "plain"

    const-string v10, "uu"

    if-nez v9, :cond_4

    .line 464
    :try_start_5
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    if-nez v11, :cond_2

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    if-eqz v11, :cond_4

    :cond_2
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 465
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_4

    .line 466
    :cond_3
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "SMTP auth only possible with MIME mail"

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_4
    if-nez v9, :cond_7

    .line 469
    iget-boolean v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 470
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_5

    .line 471
    :cond_6
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "SSL and STARTTLS only possible with MIME mail"

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    :cond_7
    :goto_5
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 476
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_5
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_9

    if-nez v9, :cond_9

    :cond_8
    :try_start_6
    const-string v10, "org.apache.tools.ant.taskdefs.email.UUMailer"

    .line 480
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v11, Lorg/apache/tools/ant/taskdefs/email/Mailer;

    .line 478
    invoke-static {v10, v4, v11}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/email/Mailer;
    :try_end_6
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v8, "Using UU mail"

    .line 482
    invoke-virtual {p0, v8, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V
    :try_end_7
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v9, v2

    goto :goto_7

    :catch_2
    move-exception v8

    move v9, v2

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v12, v8

    move-object v8, v4

    move-object v4, v12

    :goto_6
    :try_start_8
    const-string v10, "Failed to initialise UU mail: "

    .line 484
    invoke-direct {p0, v10, v8}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    :goto_7
    move-object v8, v4

    .line 488
    :cond_9
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 489
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v9, :cond_b

    .line 490
    :cond_a
    new-instance v8, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;

    invoke-direct {v8}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;-><init>()V

    const-string v3, "Using plain mail"

    .line 492
    invoke-virtual {p0, v3, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    :cond_b
    if-eqz v8, :cond_17

    .line 500
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v3, :cond_c

    .line 501
    new-instance v3, Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>()V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 502
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 505
    :cond_c
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 509
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_8

    .line 510
    :cond_d
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "At least one of to, cc or bcc must be supplied"

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 514
    :cond_e
    :goto_8
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 515
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/Message;->isMimeTypeSpecified()Z

    move-result v3

    if-nez v3, :cond_f

    .line 519
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/email/Message;->setMimeType(Ljava/lang/String;)V

    goto :goto_9

    .line 516
    :cond_f
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "The mime type can only be specified in one location"

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 522
    :cond_10
    :goto_9
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 523
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/Message;->getCharset()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    .line 527
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/email/Message;->setCharset(Ljava/lang/String;)V

    goto :goto_a

    .line 524
    :cond_11
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "The charset can only be specified in one location"

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 529
    :cond_12
    :goto_a
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageFileInputEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/email/Message;->setInputEncoding(Ljava/lang/String;)V

    .line 532
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 534
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    if-eqz v4, :cond_13

    .line 535
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/Resource;

    .line 536
    const-class v9, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v5, v9}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v5}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 540
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending email: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "From "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ReplyTo "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "To "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cc "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bcc "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 548
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->host:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHost(Ljava/lang/String;)V

    .line 549
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->port:Ljava/lang/Integer;

    if-eqz v4, :cond_14

    .line 550
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPort(I)V

    .line 551
    invoke-virtual {v8, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPortExplicitlySpecified(Z)V

    goto :goto_c

    :cond_14
    const/16 v4, 0x19

    .line 553
    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPort(I)V

    .line 554
    invoke-virtual {v8, v6}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPortExplicitlySpecified(Z)V

    .line 556
    :goto_c
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setUser(Ljava/lang/String;)V

    .line 557
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPassword(Ljava/lang/String;)V

    .line 558
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSSL(Z)V

    .line 559
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setEnableStartTLS(Z)V

    .line 560
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setMessage(Lorg/apache/tools/ant/taskdefs/email/Message;)V

    .line 561
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFrom(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V

    .line 562
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setReplyToList(Ljava/util/Vector;)V

    .line 563
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setToList(Ljava/util/Vector;)V

    .line 564
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setCcList(Ljava/util/Vector;)V

    .line 565
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setBccList(Ljava/util/Vector;)V

    .line 566
    invoke-virtual {v8, v3}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFiles(Ljava/util/Vector;)V

    .line 567
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSubject(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v8, p0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setTask(Lorg/apache/tools/ant/Task;)V

    .line 569
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setIncludeFileNames(Z)V

    .line 570
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->headers:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHeaders(Ljava/util/Vector;)V

    .line 571
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ignoreInvalidRecipients:Z

    invoke-virtual {v8, v4}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setIgnoreInvalidRecipients(Z)V

    .line 574
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->send()V

    .line 577
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sent email with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " attachment"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v3, v2, :cond_15

    const-string v3, ""

    goto :goto_d

    :cond_15
    const-string v3, "s"

    .line 580
    :goto_d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-virtual {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    goto :goto_e

    .line 506
    :cond_16
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "A from element is required"

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 496
    :cond_17
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "Failed to initialise encoding: %s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
    :try_end_8
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v3

    .line 587
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 588
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z

    if-nez v0, :cond_18

    goto :goto_e

    .line 589
    :cond_18
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception v2

    .line 582
    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    .line 583
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v0, :cond_19

    .line 592
    :goto_e
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    return-void

    .line 584
    :cond_19
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 592
    :goto_f
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 593
    throw v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 645
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeFileNames()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    return v0
.end method

.method public setBccList(Ljava/lang/String;)V
    .locals 3

    .line 344
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCcList(Ljava/lang/String;)V
    .locals 3

    .line 322
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    return-void
.end method

.method public setEnableStartTLS(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    return-void
.end method

.method public setEncoding(Lorg/apache/tools/ant/taskdefs/email/EmailTask$Encoding;)V
    .locals 0

    .line 159
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask$Encoding;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z

    return-void
.end method

.method public setFiles(Ljava/lang/String;)V
    .locals 4

    .line 366
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->createAttachments()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/types/resources/FileResource;

    .line 370
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    return-void

    .line 260
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Emails can only be from one address"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIgnoreInvalidRecipients(Z)V
    .locals 0

    .line 436
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ignoreInvalidRecipients:Z

    return-void
.end method

.method public setIncludefilenames(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    return-void
.end method

.method public setMailhost(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->host:Ljava/lang/String;

    return-void
.end method

.method public setMailport(I)V
    .locals 0

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->port:Ljava/lang/Integer;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 200
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void

    .line 196
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one message can be sent in an email"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessageFile(Ljava/io/File;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void

    .line 210
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one message can be sent in an email"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessageFileInputEncoding(Ljava/lang/String;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageFileInputEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMessageMimeType(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    return-void
.end method

.method public setReplyTo(Ljava/lang/String;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSSL(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    return-void
.end method

.method public setToList(Ljava/lang/String;)V
    .locals 3

    .line 300
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    return-void
.end method
