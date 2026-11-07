.class final Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
.super Ljava/lang/Object;
.source "StreamPumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/StreamPumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PostStopHandle"
.end annotation


# instance fields
.field private inPostStopTasks:Z

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/StreamPumper;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/StreamPumper;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->this$0:Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->inPostStopTasks:Z

    .line 287
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 285
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;Z)Z
    .locals 0

    .line 285
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->inPostStopTasks:Z

    return p1
.end method


# virtual methods
.method awaitPostStopCompletion(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method isInPostStopTasks()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->inPostStopTasks:Z

    return v0
.end method
