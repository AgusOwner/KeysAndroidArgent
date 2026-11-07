.class public Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;
.super Lorg/apache/tools/ant/Task;
.source "JJDoc.java"


# static fields
.field private static final DEFAULT_SUFFIX_HTML:Ljava/lang/String; = ".html"

.field private static final DEFAULT_SUFFIX_TEXT:Ljava/lang/String; = ".txt"

.field private static final ONE_TABLE:Ljava/lang/String; = "ONE_TABLE"

.field private static final OUTPUT_FILE:Ljava/lang/String; = "OUTPUT_FILE"

.field private static final TEXT:Ljava/lang/String; = "TEXT"


# instance fields
.field private cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

.field private javaccHome:Ljava/io/File;

.field private maxMemory:Ljava/lang/String;

.field private final optionalAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private outputFile:Ljava/lang/String;

.field private plainText:Z

.field private targetFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->plainText:Z

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    .line 59
    new-instance v1, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 61
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->maxMemory:Ljava/lang/String;

    const-string v0, "java"

    .line 120
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    return-void
.end method

.method private createOutputFileName(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string p3, ".txt"

    goto :goto_0

    :cond_0
    const-string p3, ".html"

    :goto_0
    if-eqz p2, :cond_2

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 195
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-ltz p2, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const/16 p2, 0x2e

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 206
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 211
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-OUTPUT_FILE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    .line 140
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 144
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->plainText:Z

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->createOutputFileName(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target is already built - skipping ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->log(Ljava/lang/String;I)V

    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/types/Path$PathElement;->setPath(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 161
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-static {v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->maxMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setMaxmemory(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-Dinstall.root="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3, v3}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 173
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->describeCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->log(Ljava/lang/String;I)V

    .line 174
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 177
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 178
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "JJDoc failed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Failed to launch JJDoc"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid target: %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-optional-javacc-JJDoc(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setJavacchome(Ljava/io/File;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->maxMemory:Ljava/lang/String;

    return-void
.end method

.method public setOnetable(Z)V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    const-string v1, "ONE_TABLE"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOutputfile(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/io/File;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    return-void
.end method

.method public setText(Z)V
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    const-string v1, "TEXT"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->plainText:Z

    return-void
.end method
