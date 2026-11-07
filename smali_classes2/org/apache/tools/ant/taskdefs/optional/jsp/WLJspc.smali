.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "WLJspc.java"


# instance fields
.field private compileClasspath:Lorg/apache/tools/ant/types/Path;

.field private destinationDirectory:Ljava/io/File;

.field private destinationPackage:Ljava/lang/String;

.field private filesToDo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathToPackage:Ljava/lang/String;

.field private sourceDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const-string v0, ""

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/16 v1, 0x2e

    .line 125
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 141
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    const-string v3, "weblogic.jspc"

    .line 143
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    const/16 v3, 0xc

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "-d"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 152
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "-docroot"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 154
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-string v5, "-keepgenerated"

    const/4 v7, 0x4

    aput-object v5, v4, v7

    const-string v5, "-compilerclass"

    const/4 v7, 0x5

    aput-object v5, v4, v7

    const-string v5, "sun.tools.javac.Main"

    const/4 v7, 0x6

    aput-object v5, v4, v7

    const-string v5, "-classpath"

    const/4 v7, 0x7

    aput-object v5, v4, v7

    .line 164
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    aput-object v5, v4, v7

    .line 166
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->scanDir([Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Compiling "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " JSP files"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 174
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "-package"

    const/16 v9, 0x9

    aput-object v8, v4, v9

    .line 176
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    if-eqz v7, :cond_3

    .line 177
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 180
    :cond_2
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v10, "_."

    invoke-virtual {p0, v7, v9, v10}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "._"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    goto :goto_2

    .line 178
    :cond_3
    :goto_1
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    aput-object v7, v4, v8

    .line 184
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v4, v8

    .line 185
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->clearArgs()V

    move v7, v6

    :goto_3
    if-ge v7, v3, :cond_4

    .line 189
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v8

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 193
    :cond_4
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v7}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 194
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " failed to compile"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    return-void

    .line 121
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "package attribute must be present."

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 116
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "src directory %s is not valid"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 111
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "destination directory %s is not valid"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 313
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, p3

    .line 315
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected scanDir([Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 259
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v1, v6

    .line 260
    new-instance v8, Ljava/io/File;

    iget-object v9, v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_"

    if-eqz v9, :cond_1

    .line 268
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v12, "_/"

    invoke-virtual {v0, v9, v11, v12}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 269
    :cond_1
    :goto_1
    iget-object v9, v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    .line 275
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 276
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v10, v11, :cond_2

    .line 277
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v12

    goto :goto_3

    :cond_2
    move v10, v5

    :goto_3
    const-string v13, ".jsp"

    .line 278
    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v11, :cond_3

    .line 280
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipping "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Not a JSP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v14}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    goto :goto_4

    .line 285
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 286
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 287
    new-instance v10, Ljava/io/File;

    iget-object v11, v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    cmp-long v9, v15, v2

    if-lez v9, :cond_4

    .line 290
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Warning: file modified in the future: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v12}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    .line 293
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 294
    iget-object v8, v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Recompiling File "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v14}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    return-void
.end method
