.class public Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;
.super Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;
.source "CCMCheck.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "/comment"

.field public static final FLAG_TASK:Ljava/lang/String; = "/task"


# instance fields
.field private comment:Ljava/lang/String;

.field private file:Ljava/io/File;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private task:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->comment:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->task:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->filesets:Ljava/util/Vector;

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/comment"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getTask()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/task"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getTask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private doit()V
    .locals 4

    .line 159
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getCcmCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getCcmAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 170
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 171
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed executing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source - a file or a fileset."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "CCMCheck cannot be generated for directories"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 137
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Choose between file and fileset !"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 141
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->doit()V

    return-void

    .line 145
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 146
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v2

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 149
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->setFile(Ljava/io/File;)V

    .line 150
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->doit()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTask()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->task:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->comment:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "working file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->log(Ljava/lang/String;I)V

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->file:Ljava/io/File;

    return-void
.end method

.method public setTask(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;->task:Ljava/lang/String;

    return-void
.end method
