.class public Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;
.super Lorg/apache/tools/ant/Task;
.source "Pvcs.java"


# static fields
.field private static final GET_EXE:Ljava/lang/String; = "get"

.field private static final PCLI_EXE:Ljava/lang/String; = "pcli"

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3


# instance fields
.field private config:Ljava/lang/String;

.field private filenameFormat:Ljava/lang/String;

.field private force:Ljava/lang/String;

.field private ignorerc:Z

.field private label:Ljava/lang/String;

.field private lineStart:Ljava/lang/String;

.field private promotiongroup:Ljava/lang/String;

.field private pvcsProject:Ljava/lang/String;

.field private pvcsProjects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;",
            ">;"
        }
    .end annotation
.end field

.field private pvcsbin:Ljava/lang/String;

.field private repository:Ljava/lang/String;

.field private revision:Ljava/lang/String;

.field private updateOnly:Z

.field private userId:Ljava/lang/String;

.field private workspace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    .line 113
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProjects:Ljava/util/Vector;

    .line 114
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->workspace:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->force:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->promotiongroup:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->label:Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    .line 121
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    const-string v0, "\"P:"

    .line 122
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->lineStart:Ljava/lang/String;

    const-string v0, "{0}-arc({1})"

    .line 123
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->filenameFormat:Ljava/lang/String;

    return-void
.end method

.method private createFolders(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "\""

    .line 302
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 303
    :try_start_0
    new-instance p1, Ljava/text/MessageFormat;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getFilenameFormat()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_6

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Considering \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    const-string v3, "\"\\"

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_1

    const-string v3, "\"/"

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 314
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    .line 315
    aget-object v3, v3, v6

    check-cast v3, Ljava/lang/String;

    .line 317
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_5

    .line 319
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists. Skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 324
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 330
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 327
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 336
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File separator problem with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 342
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 344
    :cond_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 302
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method

.method private getExecutable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsbin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$massagePCLI$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 358
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$massagePCLI$1(Ljava/io/BufferedReader;)Ljava/util/Iterator;
    .locals 1

    .line 357
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda0;-><init>()V

    .line 358
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private massagePCLI(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    :try_start_0
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 357
    :try_start_1
    new-instance p2, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda1;-><init>(Ljava/io/BufferedReader;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 355
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method


# virtual methods
.method public addPvcsproject(Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, ".log"

    const-string v1, "pvcs_ant_"

    const-string v2, "Failed executing: "

    .line 166
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 174
    new-instance v3, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    const-string v4, "pcli"

    .line 175
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    const-string v5, "lvf"

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    const-string v5, "-z"

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    const-string v5, "-aw"

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getWorkspace()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 181
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-sp"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getWorkspace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-pr"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getRepository()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "-id"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsproject()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsprojects()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/"

    .line 193
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    .line 196
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsproject()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 197
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsproject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 199
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsprojects()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 200
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsprojects()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;

    .line 201
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 202
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 205
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "name is a required attribute of pvcsproject"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v4, 0x0

    .line 212
    :try_start_0
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 213
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 214
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/nio/file/OpenOption;

    invoke-static {v7, v8}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v7

    .line 215
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    :try_start_3
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-direct {v0, v7, v4}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->runCmd(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :try_start_4
    invoke-static {v7}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 224
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    if-eqz v0, :cond_6

    goto :goto_1

    .line 225
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 229
    :cond_7
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Creating folders"

    const/4 v4, 0x2

    .line 236
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 237
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->createFolders(Ljava/io/File;)V

    .line 240
    invoke-direct {p0, v6, v8}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->massagePCLI(Ljava/io/File;Ljava/io/File;)V

    .line 243
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->clearArgs()V

    const-string v0, "get"

    .line 244
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getConfig()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 247
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-c"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getConfig()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 250
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getForce()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getForce()Ljava/lang/String;

    move-result-object v0

    const-string v7, "yes"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v7, "-Y"

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :cond_9
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v7, "-N"

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 256
    :goto_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPromotiongroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-G"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 258
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPromotiongroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 260
    :cond_a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 261
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-v"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 263
    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getRevision()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 264
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-r"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getRevision()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 269
    :cond_c
    :goto_3
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    if-eqz v0, :cond_d

    .line 270
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v7, "-U"

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 273
    :cond_d
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const-string v0, "Getting files"

    .line 274
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 276
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    invoke-direct {v0, p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->runCmd(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 278
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    if-eqz v1, :cond_e

    goto :goto_4

    .line 279
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". Return code was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    :cond_f
    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 293
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    return-void

    .line 230
    :cond_10
    :try_start_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Communication between ant and pvcs failed. No output generated from executing PVCS commandline interface \"pcli\" and \"get\""

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 221
    invoke-static {v7}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 222
    throw v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v8, v4

    :goto_5
    move-object v4, v6

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    move-object v8, v4

    :goto_7
    move-object v4, v6

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v8, v4

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_8
    move-object v8, v4

    .line 285
    :goto_9
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :goto_a
    if-eqz v4, :cond_11

    .line 290
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_11
    if-eqz v8, :cond_12

    .line 293
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 295
    :cond_12
    throw v0

    .line 167
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required argument repository not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameFormat()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->filenameFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getForce()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->force:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreReturnCode()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLineStart()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->lineStart:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotiongroup()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->promotiongroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPvcsbin()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    return-object v0
.end method

.method public getPvcsproject()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    return-object v0
.end method

.method public getPvcsprojects()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProjects:Ljava/util/Vector;

    return-object v0
.end method

.method public getRepository()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateOnly()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 632
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspace()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->workspace:Ljava/lang/String;

    return-object v0
.end method

.method protected runCmd(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I
    .locals 2

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 135
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {v1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 136
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 137
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 138
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed executing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p2
.end method

.method public setConfig(Ljava/io/File;)V
    .locals 0

    .line 623
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->config:Ljava/lang/String;

    return-void
.end method

.method public setFilenameFormat(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->filenameFormat:Ljava/lang/String;

    return-void
.end method

.method public setForce(Ljava/lang/String;)V
    .locals 1

    const-string v0, "yes"

    .line 516
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "no"

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->force:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreReturnCode(Z)V
    .locals 0

    .line 581
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->label:Ljava/lang/String;

    return-void
.end method

.method public setLineStart(Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->lineStart:Ljava/lang/String;

    return-void
.end method

.method public setPromotiongroup(Ljava/lang/String;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->promotiongroup:Ljava/lang/String;

    return-void
.end method

.method public setPvcsbin(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    return-void
.end method

.method public setPvcsproject(Ljava/lang/String;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    return-void
.end method

.method public setRepository(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->revision:Ljava/lang/String;

    return-void
.end method

.method public setUpdateOnly(Z)V
    .locals 0

    .line 606
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->userId:Ljava/lang/String;

    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->workspace:Ljava/lang/String;

    return-void
.end method
