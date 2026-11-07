.class public Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;
.super Ljava/lang/Object;
.source "XMLValidateTask.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValidatorErrorHandler"
.end annotation


# instance fields
.field protected currentFile:Ljava/io/File;

.field protected failed:Z

.field protected lastErrorMessage:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;


# direct methods
.method protected constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 580
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->currentFile:Ljava/io/File;

    .line 581
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->lastErrorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 582
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    return-void
.end method

.method private doLog(Lorg/xml/sax/SAXParseException;I)V
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->getMessage(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private getMessage(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .locals 7

    .line 634
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "file:"

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->access$000()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :catch_0
    :cond_0
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    .line 645
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 649
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 651
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 653
    :cond_3
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->doLog(Lorg/xml/sax/SAXParseException;I)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const/4 v0, 0x1

    .line 605
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    const/4 v0, 0x0

    .line 606
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->doLog(Lorg/xml/sax/SAXParseException;I)V

    return-void
.end method

.method public getFailure()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    return v0
.end method

.method public init(Ljava/io/File;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->currentFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 590
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;

    iget-boolean v0, v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->warn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 624
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->doLog(Lorg/xml/sax/SAXParseException;I)V

    :cond_0
    return-void
.end method
