.class public abstract Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.super Lorg/apache/tools/ant/Task;
.source "AbstractCvsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMMAND:Ljava/lang/String; = "checkout"

.field public static final DEFAULT_COMPRESSION_LEVEL:I = 0x3

.field private static final MAXIMUM_COMRESSION_LEVEL:I = 0x9


# instance fields
.field private append:Z

.field private cmd:Lorg/apache/tools/ant/types/Commandline;

.field private command:Ljava/lang/String;

.field private commandlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Commandline;",
            ">;"
        }
    .end annotation
.end field

.field private compression:I

.field private cvsPackage:Ljava/lang/String;

.field private cvsRoot:Ljava/lang/String;

.field private cvsRsh:Ljava/lang/String;

.field private dest:Ljava/io/File;

.field private error:Ljava/io/File;

.field private errorStream:Ljava/io/OutputStream;

.field private executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

.field private failOnError:Z

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;",
            ">;"
        }
    .end annotation
.end field

.field private noexec:Z

.field private output:Ljava/io/File;

.field private outputStream:Ljava/io/OutputStream;

.field private passFile:Ljava/io/File;

.field private port:I

.field private quiet:Z

.field private reallyquiet:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cmd:Lorg/apache/tools/ant/types/Commandline;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->command:Ljava/lang/String;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->quiet:Z

    .line 103
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    .line 108
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    .line 113
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->noexec:Z

    .line 118
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    .line 123
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    .line 133
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    .line 149
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    return-void
.end method

.method private executeToString(Lorg/apache/tools/ant/taskdefs/Execute;)Ljava/lang/String;
    .locals 3

    .line 420
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->removeCvsPassword(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironment()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 425
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "%n%nenvironment:%n"

    .line 426
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$executeToString$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "%n\t%s"

    .line 425
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeCvsPassword(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-d:"

    .line 443
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x40

    .line 446
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/16 v3, 0x3a

    .line 447
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 448
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 449
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ltz v2, :cond_0

    if-le p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :goto_0
    if-ge p1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    const-string v3, "*"

    .line 452
    invoke-virtual {v0, p1, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addCommandArgument(Ljava/lang/String;)V
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V

    return-void
.end method

.method public addCommandArgument(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .locals 0

    .line 620
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 1

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;Z)V

    return-void
.end method

.method public addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 796
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->configureCommandline(Lorg/apache/tools/ant/types/Commandline;)V

    if-eqz p2, :cond_1

    .line 798
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 800
    :cond_1
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addModule(Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;)V
    .locals 1

    .line 831
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected configureCommandline(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "cvs"

    .line 744
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 748
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;

    .line 749
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_2
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    const/16 v2, 0x9

    if-gt v0, v2, :cond_3

    .line 753
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-z"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 755
    :cond_3
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->quiet:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    if-nez v0, :cond_4

    .line 756
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-q"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 758
    :cond_4
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    if-eqz v0, :cond_5

    .line 759
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-Q"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 761
    :cond_5
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->noexec:Z

    if-eqz v0, :cond_6

    .line 762
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-n"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 764
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 765
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getCommand()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getCommand()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "checkout"

    .line 394
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCommand(Ljava/lang/String;)V

    .line 397
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getCommand()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Commandline;

    const/4 v3, 0x1

    .line 401
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 406
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 409
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->removeCommandline(Lorg/apache/tools/ant/types/Commandline;)V

    .line 411
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCommand(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 413
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    .line 409
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->removeCommandline(Lorg/apache/tools/ant/types/Commandline;)V

    .line 411
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCommand(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 413
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 414
    throw v1
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 656
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getCvsRoot()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getCvsRsh()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    return-object v0
.end method

.method public getDest()Ljava/io/File;
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    return-object v0
.end method

.method protected getErrorStream()Ljava/io/OutputStream;
    .locals 4

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->error:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->error:Ljava/io/File;

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    invoke-static {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setErrorStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 251
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setErrorStream(Ljava/io/OutputStream;)V

    .line 255
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected getExecuteStreamHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .locals 3

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 174
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setExecuteStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    return-object v0
.end method

.method protected getModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->output:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->output:Ljava/io/File;

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    invoke-static {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 212
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setOutputStream(Ljava/io/OutputStream;)V

    .line 216
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPassFile()Ljava/io/File;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 520
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->tag:Ljava/lang/String;

    return-object v0
.end method

.method protected removeCommandline(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected runCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Caught exception: "

    const-string v1, "retCode="

    .line 271
    new-instance v2, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    .line 273
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    if-lez v3, :cond_0

    .line 274
    new-instance v3, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    const-string v4, "CVS_CLIENT_PORT"

    .line 275
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 276
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 281
    new-instance v3, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    const-string v4, "CVS_PSERVER_PORT"

    .line 282
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 283
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 291
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    if-nez v3, :cond_1

    .line 293
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user.home"

    .line 295
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cygwin.user.home"

    .line 294
    invoke-static {v6, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".cvspass"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setPassfile(Ljava/io/File;)V

    .line 303
    :cond_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 304
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    new-instance v3, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    const-string v6, "CVS_PASSFILE"

    .line 306
    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 307
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Using cvs passfile: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    const-string v6, "cvs passfile: "

    if-nez v3, :cond_3

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ignored as it is not readable"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 316
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ignored as it is not a file"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    .line 322
    :cond_4
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 323
    new-instance v3, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    const-string v6, "CVS_RSH"

    .line 324
    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 325
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 333
    :cond_5
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getExecuteStreamHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 336
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    if-nez v6, :cond_6

    .line 337
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    .line 340
    :cond_6
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    .line 341
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 344
    :cond_7
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 345
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    .line 349
    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeToString(Lorg/apache/tools/ant/taskdefs/Execute;)Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p0, p1, v4}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v2

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    .line 355
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-eqz v1, :cond_c

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    .line 356
    :cond_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "cvs exited with error code %s%nCommand line was [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 358
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    aput-object p1, v4, v5

    .line 357
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 375
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-nez v1, :cond_9

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 376
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0

    :catch_1
    move-exception p1

    .line 366
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-nez v1, :cond_b

    .line 369
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    move-object p1, v1

    .line 373
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 367
    :cond_b
    throw p1

    :catch_2
    move-exception p1

    .line 361
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-nez v1, :cond_d

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    :cond_c
    :goto_2
    return-void

    .line 362
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setAppend(Z)V
    .locals 0

    .line 707
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->command:Ljava/lang/String;

    return-void
.end method

.method public setCompression(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 820
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCompressionLevel(I)V

    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 0

    .line 810
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    return-void
.end method

.method public setCvsRoot(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 472
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    return-void
.end method

.method public setCvsRsh(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 494
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 630
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-D"

    .line 631
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    return-void
.end method

.method public setError(Ljava/io/File;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->error:Ljava/io/File;

    return-void
.end method

.method protected setErrorStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setExecuteStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 718
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    return-void
.end method

.method public setNoexec(Z)V
    .locals 0

    .line 682
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->noexec:Z

    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->output:Ljava/io/File;

    return-void
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    return-void
.end method

.method public setPassfile(Ljava/io/File;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 512
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 664
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->quiet:Z

    return-void
.end method

.method public setReallyquiet(Z)V
    .locals 0

    .line 673
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->tag:Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-r"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
