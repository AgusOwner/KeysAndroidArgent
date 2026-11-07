.class public Lorg/apache/tools/ant/taskdefs/RecorderEntry;
.super Ljava/lang/Object;
.source "RecorderEntry.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildLogger;
.implements Lorg/apache/tools/ant/SubBuildListener;


# instance fields
.field private emacsMode:Z

.field private filename:Ljava/lang/String;

.field private loglevel:I

.field private out:Ljava/io/PrintStream;

.field private project:Lorg/apache/tools/ant/Project;

.field private record:Z

.field private targetStartTime:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    const/4 v1, 0x2

    .line 48
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->loglevel:I

    .line 50
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->emacsMode:Z

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    .line 66
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    return-void
.end method

.method private flush()V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method private static formatTime(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x3e8

    .line 275
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 276
    div-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-string v5, ""

    const-string v6, "s"

    const-string v7, " second"

    const-wide/16 v8, 0x1

    if-lez v4, :cond_2

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " minute"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    const-string v2, " "

    goto :goto_0

    :cond_0
    const-string v2, "s "

    .line 281
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    cmp-long p0, p0, v8

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 283
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    rem-long/2addr p0, v0

    cmp-long p0, p0, v8

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private log(Ljava/lang/String;I)V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->loglevel:I

    if-gt p2, v0, :cond_0

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private openFileImpl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 363
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Problems opening file using a recorder entry"

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 3

    const-string v0, "< BUILD FINISHED"

    const/4 v1, 0x4

    .line 104
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 106
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    const-string v1, "%nBUILD SUCCESSFUL%n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    const-string v2, "%nBUILD FAILED%n%n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->cleanup()V

    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 1

    const-string p1, "> BUILD STARTED"

    const/4 v0, 0x4

    .line 96
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->closeFile()V

    .line 320
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method closeFile()V
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    :cond_0
    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageOutputLevel()I
    .locals 1

    .line 242
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->loglevel:I

    return v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 5

    const-string v0, "--- MESSAGE LOGGED"

    const/4 v1, 0x4

    .line 189
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->emacsMode:Z

    if-nez v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xc

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const-string v4, " "

    .line 201
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    return-void
.end method

.method openFile(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFileImpl(Z)V

    return-void
.end method

.method reopenFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 357
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFileImpl(Z)V

    return-void
.end method

.method public setEmacsMode(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->emacsMode:Z

    return-void
.end method

.method public setErrorPrintStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setOutputPrintStream(Ljava/io/PrintStream;)V

    return-void
.end method

.method public setMessageOutputLevel(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 236
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->loglevel:I

    :cond_0
    return-void
.end method

.method public setOutputPrintStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->closeFile()V

    .line 251
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    :cond_0
    return-void
.end method

.method public setRecordState(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->flush()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    :cond_0
    return-void
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    if-ne p1, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->cleanup()V

    :cond_0
    return-void
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 4

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<< TARGET FINISHED -- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":  duration "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 164
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->flush()V

    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> TARGET STARTED -- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%n%s:"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<<< TASK FINISHED -- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 181
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->flush()V

    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>> TASK STARTED -- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    return-void
.end method
