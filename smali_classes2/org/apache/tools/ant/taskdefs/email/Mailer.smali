.class public abstract Lorg/apache/tools/ant/taskdefs/email/Mailer;
.super Ljava/lang/Object;
.source "Mailer.java"


# instance fields
.field protected SSL:Z

.field protected bccList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected ccList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected files:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

.field protected headers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected host:Ljava/lang/String;

.field private ignoreInvalidRecipients:Z

.field protected includeFileNames:Z

.field protected message:Lorg/apache/tools/ant/taskdefs/email/Message;

.field protected password:Ljava/lang/String;

.field protected port:I

.field private portExplicitlySpecified:Z

.field protected replyToList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private starttls:Z

.field protected subject:Ljava/lang/String;

.field protected task:Lorg/apache/tools/ant/Task;

.field protected toList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->port:I

    .line 36
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->user:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->password:Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->SSL:Z

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->replyToList:Ljava/util/Vector;

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->toList:Ljava/util/Vector;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->ccList:Ljava/util/Vector;

    .line 46
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->bccList:Ljava/util/Vector;

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->files:Ljava/util/Vector;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->subject:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->includeFileNames:Z

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->headers:Ljava/util/Vector;

    .line 53
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->ignoreInvalidRecipients:Z

    .line 54
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->starttls:Z

    .line 55
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->portExplicitlySpecified:Z

    return-void
.end method


# virtual methods
.method protected final getDate()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-static {}, Lorg/apache/tools/ant/util/DateUtils;->getDateForHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isPortExplicitlySpecified()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->portExplicitlySpecified:Z

    return v0
.end method

.method protected isStartTLSEnabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->starttls:Z

    return v0
.end method

.method public abstract send()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation
.end method

.method public setBccList(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->bccList:Ljava/util/Vector;

    return-void
.end method

.method public setCcList(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->ccList:Ljava/util/Vector;

    return-void
.end method

.method public setEnableStartTLS(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->starttls:Z

    return-void
.end method

.method public setFiles(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->files:Ljava/util/Vector;

    return-void
.end method

.method public setFrom(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    return-void
.end method

.method public setHeaders(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/Header;",
            ">;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->headers:Ljava/util/Vector;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->host:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreInvalidRecipients(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->ignoreInvalidRecipients:Z

    return-void
.end method

.method public setIncludeFileNames(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->includeFileNames:Z

    return-void
.end method

.method public setMessage(Lorg/apache/tools/ant/taskdefs/email/Message;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 72
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->port:I

    return-void
.end method

.method public setPortExplicitlySpecified(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->portExplicitlySpecified:Z

    return-void
.end method

.method public setReplyToList(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->replyToList:Ljava/util/Vector;

    return-void
.end method

.method public setSSL(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->SSL:Z

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->subject:Ljava/lang/String;

    return-void
.end method

.method public setTask(Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->task:Lorg/apache/tools/ant/Task;

    return-void
.end method

.method public setToList(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->toList:Ljava/util/Vector;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->user:Ljava/lang/String;

    return-void
.end method

.method protected shouldIgnoreInvalidRecipients()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Mailer;->ignoreInvalidRecipients:Z

    return v0
.end method
