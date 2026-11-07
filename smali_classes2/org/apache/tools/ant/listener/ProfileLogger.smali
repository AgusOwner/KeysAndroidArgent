.class public Lorg/apache/tools/ant/listener/ProfileLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "ProfileLogger.java"


# instance fields
.field private profileData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    return-void
.end method

.method private logFinish(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V
    .locals 5

    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p3, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%n%s: finished %s (%d)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "%n%s: finished %s (unknown duration, start not detected)"

    .line 101
    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 104
    :goto_0
    iget-object p3, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/tools/ant/listener/ProfileLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 105
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/listener/ProfileLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logStart(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1

    const-string v0, "%n%s: started %s"

    .line 109
    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 110
    iget-object p3, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/tools/ant/listener/ProfileLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 111
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/listener/ProfileLogger;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/listener/ProfileLogger;->logFinish(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/listener/ProfileLogger;->logStart(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 90
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/listener/ProfileLogger;->logFinish(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 76
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/tools/ant/listener/ProfileLogger;->logStart(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
