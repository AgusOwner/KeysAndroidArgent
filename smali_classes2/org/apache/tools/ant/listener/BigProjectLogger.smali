.class public Lorg/apache/tools/ant/listener/BigProjectLogger;
.super Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;
.source "BigProjectLogger.java"

# interfaces
.implements Lorg/apache/tools/ant/SubBuildListener;


# static fields
.field public static final FOOTER:Ljava/lang/String; = "======================================================================"

.field public static final HEADER:Ljava/lang/String; = "======================================================================"


# instance fields
.field private final subBuildLock:Ljava/lang/Object;

.field private volatile subBuildStartedRaised:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildLock:Ljava/lang/Object;

    return-void
.end method

.method private maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 172
    iget-boolean v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 178
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 100
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->buildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    return-void
.end method

.method protected extractNameOrDefault(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;
    .locals 2

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->extractProjectName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getBuildFailedMessage()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->getBuildFailedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBuildSuccessfulMessage()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->getBuildSuccessfulMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFooter()Ljava/lang/String;
    .locals 1

    const-string v0, "======================================================================"

    return-object v0
.end method

.method protected getHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "======================================================================"

    return-object v0
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 110
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->messageLogged(Lorg/apache/tools/ant/BuildEvent;)V

    return-void
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getHeader()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "failing "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->extractNameOrDefault(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getFooter()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%n%s%nExiting %sproject %s%n%s"

    .line 147
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->out:Ljava/io/PrintStream;

    .line 151
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result p1

    .line 147
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    return-void
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 4

    .line 120
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "With no base directory"

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->extractNameOrDefault(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getFooter()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%n%s%nEntering project %s%n%s%n%s"

    .line 123
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->out:Ljava/io/PrintStream;

    .line 126
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result p1

    .line 123
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 79
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->targetStarted(Lorg/apache/tools/ant/BuildEvent;)V

    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 89
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->taskStarted(Lorg/apache/tools/ant/BuildEvent;)V

    return-void
.end method
