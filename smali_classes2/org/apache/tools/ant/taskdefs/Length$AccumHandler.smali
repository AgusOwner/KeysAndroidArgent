.class Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;
.super Lorg/apache/tools/ant/taskdefs/Length$Handler;
.source "Length.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Length;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccumHandler"
.end annotation


# instance fields
.field private accum:J

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Length;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Length;)V
    .locals 2

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Length$Handler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    const-wide/16 v0, 0x0

    .line 316
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    .line 323
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Length$Handler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    const-wide/16 p1, 0x0

    .line 316
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    return-void
.end method


# virtual methods
.method protected getAccum()J
    .locals 2

    .line 327
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    return-wide v0
.end method

.method protected declared-synchronized handle(Lorg/apache/tools/ant/types/Resource;)V
    .locals 5

    const-string v0, "Size unknown for "

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 334
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/apache/tools/ant/taskdefs/Length;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 336
    :cond_0
    iget-wide v3, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
