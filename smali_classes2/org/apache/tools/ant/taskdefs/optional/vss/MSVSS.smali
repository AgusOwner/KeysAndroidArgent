.class public abstract Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;
.super Lorg/apache/tools/ant/Task;
.source "MSVSS.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;,
        Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;
    }
.end annotation


# instance fields
.field private autoResponse:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private dateFormat:Ljava/text/DateFormat;

.field private failOnError:Z

.field private fromDate:Ljava/lang/String;

.field private fromLabel:Ljava/lang/String;

.field private getLocalCopy:Z

.field private label:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private numDays:I

.field private outputFileName:Ljava/lang/String;

.field private quiet:Z

.field private recursive:Z

.field private serverPath:Ljava/lang/String;

.field private ssDir:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

.field private toDate:Ljava/lang/String;

.field private toLabel:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private vssLogin:Ljava/lang/String;

.field private vssPath:Ljava/lang/String;

.field private writable:Z

.field private writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->style:Ljava/lang/String;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->quiet:Z

    .line 87
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->recursive:Z

    .line 89
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writable:Z

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    .line 93
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocalCopy:Z

    const/high16 v1, -0x80000000

    .line 95
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    const/4 v1, 0x3

    .line 97
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    .line 99
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    return-void
.end method

.method private calcDate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 735
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 736
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 737
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 738
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatCommandLine(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .locals 4

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 749
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 751
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 752
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    const/16 v2, 0x2a

    .line 755
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 758
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFailOnError()Z
    .locals 2

    .line 642
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getWritableFiles()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getShortLabel()Ljava/lang/String;
    .locals 3

    .line 433
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Label is longer than 31 characters, truncated to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private run(Lorg/apache/tools/ant/types/Commandline;)I
    .locals 6

    const-string v0, "SSDIR="

    .line 695
    :try_start_0
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 701
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 702
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironment()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    .line 706
    :cond_0
    array-length v5, v2

    add-int/2addr v5, v4

    new-array v4, v5, [Ljava/lang/String;

    .line 707
    array-length v5, v2

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    array-length v2, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 710
    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    .line 713
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 714
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 715
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 717
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 718
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 720
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method


# virtual methods
.method abstract buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->buildCmdLine()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 184
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getFailOnError()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed executing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->formatCommandLine(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " With a return code of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected getAutoresponse()Ljava/lang/String;
    .locals 3

    .line 518
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    const-string v1, "-I-"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "Y"

    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-I-Y"

    return-object v0

    .line 523
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-I-N"

    return-object v0

    :cond_2
    return-object v1
.end method

.method protected getComment()Ljava/lang/String;
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-C"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-C-"

    :goto_0
    return-object v0
.end method

.method public getFileTimeStamp()Ljava/lang/String;
    .locals 2

    .line 656
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 658
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-GTM"

    return-object v0

    .line 660
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-GTU"

    return-object v0

    :cond_2
    const-string v0, "-GTC"

    return-object v0
.end method

.method protected getGetLocalCopy()Ljava/lang/String;
    .locals 1

    .line 634
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocalCopy:Z

    if-nez v0, :cond_0

    const-string v0, "-G-"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 2

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getShortLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getLocalpath()Ljava/lang/String;
    .locals 4

    .line 488
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 490
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created dir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 494
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " creation was not successful for an unknown reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 500
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-GL"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v0, ""

    :goto_3
    return-object v0
.end method

.method protected getLogin()Ljava/lang/String;
    .locals 2

    .line 536
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-Y"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getOutput()Ljava/lang/String;
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-O"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getQuiet()Ljava/lang/String;
    .locals 1

    .line 394
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->quiet:Z

    if-eqz v0, :cond_0

    const-string v0, "-O-"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getRecursive()Ljava/lang/String;
    .locals 1

    .line 402
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->recursive:Z

    if-eqz v0, :cond_0

    const-string v0, "-R"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getSSCommand()Ljava/lang/String;
    .locals 3

    .line 374
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    const-string v1, "ss"

    if-nez v0, :cond_0

    return-object v1

    .line 377
    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getStyle()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->style:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getUser()Ljava/lang/String;
    .locals 2

    .line 552
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-U"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 2

    .line 478
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-V"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getVersionDate()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    if-ne v2, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v2, "~d"

    const-string v3, "-Vd"

    if-eqz v0, :cond_1

    .line 605
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 607
    :cond_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    const-string v5, "Error parsing date: "

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    if-eq v4, v1, :cond_2

    .line 609
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    .line 610
    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->calcDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 612
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_2
    if-eqz v0, :cond_3

    .line 615
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    if-eq v4, v1, :cond_3

    .line 617
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    invoke-direct {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->calcDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 620
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_3
    if-eqz v0, :cond_4

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-V~d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVersionDateLabel()Ljava/lang/String;
    .locals 3

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-V"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-Vd"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getShortLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-VL"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected getVersionLabel()Ljava/lang/String;
    .locals 9

    .line 561
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "FromLabel is longer than 31 characters, truncated to: "

    const-string v2, "ToLabel is longer than 31 characters, truncated to: "

    const-string v3, "-VL"

    const/4 v4, 0x1

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/16 v7, 0x1f

    if-eqz v0, :cond_3

    .line 565
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 566
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 567
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 571
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_2

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 576
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v0, :cond_5

    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 579
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 583
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-V~L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 585
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_6

    .line 586
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 590
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVsspath()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getWritable()Ljava/lang/String;
    .locals 1

    .line 410
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writable:Z

    if-eqz v0, :cond_0

    const-string v0, "-W"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getWritableFiles()Ljava/lang/String;
    .locals 3

    .line 673
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 675
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "replace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-GWR"

    return-object v0

    .line 677
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "skip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 680
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    const-string v0, "-GWS"

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final setFailOnError(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    return-void
.end method

.method protected setInternalAutoResponse(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    return-void
.end method

.method protected setInternalComment(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    return-void
.end method

.method protected setInternalDate(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    return-void
.end method

.method protected setInternalDateFormat(Ljava/text/DateFormat;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method protected setInternalFailOnError(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    return-void
.end method

.method protected setInternalFileTimeStamp(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    return-void
.end method

.method protected setInternalFromDate(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    return-void
.end method

.method protected setInternalFromLabel(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    return-void
.end method

.method protected setInternalGetLocalCopy(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocalCopy:Z

    return-void
.end method

.method protected setInternalLabel(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    return-void
.end method

.method protected setInternalLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    return-void
.end method

.method protected setInternalNumDays(I)V
    .locals 0

    .line 270
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    return-void
.end method

.method protected setInternalOutputFilename(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    return-void
.end method

.method protected setInternalQuiet(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->quiet:Z

    return-void
.end method

.method protected setInternalRecursive(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->recursive:Z

    return-void
.end method

.method protected setInternalStyle(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->style:Ljava/lang/String;

    return-void
.end method

.method protected setInternalToDate(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    return-void
.end method

.method protected setInternalToLabel(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    return-void
.end method

.method protected setInternalUser(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    return-void
.end method

.method protected setInternalVersion(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    return-void
.end method

.method protected setInternalWritable(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writable:Z

    return-void
.end method

.method protected setInternalWritableFiles(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    return-void
.end method

.method public final setLogin(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    return-void
.end method

.method public final setServerpath(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    return-void
.end method

.method public final setSsdir(Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->translatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    return-void
.end method

.method public final setVsspath(Ljava/lang/String;)V
    .locals 2

    const-string v0, "vss://"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "$"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    :goto_0
    return-void
.end method
