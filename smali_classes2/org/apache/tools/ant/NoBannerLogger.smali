.class public Lorg/apache/tools/ant/NoBannerLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "NoBannerLogger.java"


# instance fields
.field protected targetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractTargetName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 5

    .line 83
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v0

    iget v1, p0, Lorg/apache/tools/ant/NoBannerLogger;->msgOutputLevel:I

    if-gt v0, v1, :cond_2

    .line 84
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->out:Ljava/io/PrintStream;

    const-string v1, "%n%s:%n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;

    .line 94
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-super {p0, p1}, Lorg/apache/tools/ant/DefaultLogger;->messageLogged(Lorg/apache/tools/ant/BuildEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 69
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/NoBannerLogger;->extractTargetName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
