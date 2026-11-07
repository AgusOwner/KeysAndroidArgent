.class public Lorg/apache/tools/ant/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildLogger;


# static fields
.field public static final LEFT_COLUMN_SIZE:I = 0xc

.field protected static final lSep:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected emacsMode:Z

.field protected err:Ljava/io/PrintStream;

.field protected msgOutputLevel:I

.field protected out:Ljava/io/PrintStream;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/util/StringUtils;->LINE_SEP:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/DefaultLogger;->lSep:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/tools/ant/DefaultLogger;->startTime:J

    .line 66
    iput-boolean v0, p0, Lorg/apache/tools/ant/DefaultLogger;->emacsMode:Z

    return-void
.end method

.method protected static formatTime(J)Ljava/lang/String;
    .locals 0

    .line 309
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$messageLogged$0()Ljava/lang/String;
    .locals 1

    const-string v0, " "

    return-object v0
.end method

.method static throwableMessage(Ljava/lang/StringBuffer;Ljava/lang/Throwable;Z)V
    .locals 5

    .line 141
    :goto_0
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-object p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p2, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string p2, "%s%n"

    .line 158
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 156
    :cond_3
    :goto_2
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    return-void
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 7

    .line 171
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object p1

    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/DefaultLogger;->getBuildSuccessfulMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%n%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DefaultLogger;->getBuildFailedMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%n%s%n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget v3, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {v0, p1, v3}, Lorg/apache/tools/ant/DefaultLogger;->throwableMessage(Ljava/lang/StringBuffer;Ljava/lang/Throwable;Z)V

    .line 180
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/tools/ant/DefaultLogger;->startTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%nTotal time: %s"

    .line 179
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2

    .line 184
    iget-object p1, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, p1, v2}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    goto :goto_2

    .line 186
    :cond_2
    iget-object p1, p0, Lorg/apache/tools/ant/DefaultLogger;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 188
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DefaultLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/DefaultLogger;->startTime:J

    return-void
.end method

.method protected extractProjectName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;
    .locals 0

    .line 355
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getBuildFailedMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "BUILD FAILED"

    return-object v0
.end method

.method protected getBuildSuccessfulMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "BUILD SUCCESSFUL"

    return-object v0
.end method

.method public getMessageOutputLevel()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    return v0
.end method

.method protected getTimestamp()Ljava/lang/String;
    .locals 3

    .line 343
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x3

    .line 344
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 345
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 8

    .line 258
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v0

    .line 260
    iget v1, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v0, v1, :cond_5

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/tools/ant/DefaultLogger;->emacsMode:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 268
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0xc

    if-lez v3, :cond_1

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lorg/apache/tools/ant/DefaultLogger$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/apache/tools/ant/DefaultLogger$$ExternalSyntheticLambda0;-><init>()V

    .line 271
    invoke-static {v5}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v5

    int-to-long v6, v3

    .line 272
    invoke-interface {v5, v6, v7}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 274
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    .line 275
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v3, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 274
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 280
    :catch_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 265
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object p1

    const/4 v2, 0x4

    .line 284
    iget v3, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v2, v3, :cond_3

    if-eqz p1, :cond_3

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%n%s: "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 291
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    goto :goto_4

    .line 293
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 295
    :goto_4
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DefaultLogger;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V
    .locals 0

    .line 325
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setEmacsMode(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lorg/apache/tools/ant/DefaultLogger;->emacsMode:Z

    return-void
.end method

.method public setErrorPrintStream(Ljava/io/PrintStream;)V
    .locals 2

    .line 118
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/DefaultLogger;->err:Ljava/io/PrintStream;

    return-void
.end method

.method public setMessageOutputLevel(I)V
    .locals 0

    .line 93
    iput p1, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    return-void
.end method

.method public setOutputPrintStream(Ljava/io/PrintStream;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    const/4 v0, 0x2

    .line 217
    iget v1, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v0, v1, :cond_0

    .line 218
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%n%s:"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 221
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DefaultLogger;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method
