.class Lorg/apache/tools/ant/taskdefs/email/PlainMailer;
.super Lorg/apache/tools/ant/taskdefs/email/Mailer;
.source "PlainMailer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;-><init>()V

    return-void
.end method

.method private badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send mail to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->shouldIgnoreInvalidRecipients()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because of :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->task:Lorg/apache/tools/ant/Task;

    if-eqz p2, :cond_0

    .line 158
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->task:Lorg/apache/tools/ant/Task;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 160
    :cond_0
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected attach(Ljava/io/File;Ljava/io/PrintStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->includeFileNames:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 133
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    const/16 v3, 0x3d

    .line 135
    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    :cond_1
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v3, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 144
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 147
    :goto_1
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 148
    invoke-virtual {p2, v2, v1, v0}, Ljava/io/PrintStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    .line 143
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_4

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p2

    .line 122
    :cond_5
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "File \"%s\" does not exist or is not readable."

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public send()V
    .locals 6

    .line 44
    :try_start_0
    new-instance v0, Lorg/apache/tools/mail/MailMessage;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->host:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->port:I

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    .line 46
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailMessage;->from(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->replyToList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/mail/MailMessage;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->toList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/mail/MailMessage;->to(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    .line 57
    :try_start_2
    invoke-direct {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->ccList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 63
    :try_start_3
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/mail/MailMessage;->cc(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception v5

    .line 66
    :try_start_4
    invoke-direct {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->bccList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/mail/MailMessage;->bcc(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move v2, v4

    goto :goto_2

    :catch_2
    move-exception v5

    .line 75
    :try_start_6
    invoke-direct {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_7

    .line 82
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->subject:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailMessage;->setSubject(Ljava/lang/String;)V

    :cond_3
    const-string v1, "Date"

    .line 85
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->getCharset()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const-string v2, "Content-Type"

    if-eqz v1, :cond_4

    .line 87
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/Message;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; charset=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 88
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/email/Message;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 90
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->headers:Ljava/util/Vector;

    if-eqz v1, :cond_5

    .line 93
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->headers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/email/Header;

    .line 94
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/email/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/email/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 97
    :cond_5
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailMessage;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->print(Ljava/io/PrintStream;)V

    .line 100
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->files:Ljava/util/Vector;

    if-eqz v2, :cond_6

    .line 101
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->files:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 102
    invoke-virtual {p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->attach(Ljava/io/File;Ljava/io/PrintStream;)V

    goto :goto_5

    .line 105
    :cond_6
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailMessage;->sendAndClose()V

    return-void

    .line 80
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Couldn\'t reach any recipient"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    .line 107
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "IO error sending mail"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
