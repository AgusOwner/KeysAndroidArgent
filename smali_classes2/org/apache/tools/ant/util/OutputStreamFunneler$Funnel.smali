.class final Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;
.super Ljava/io/OutputStream;
.source "OutputStreamFunneler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/OutputStreamFunneler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Funnel"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->closed:Z

    .line 42
    monitor-enter p1

    .line 43
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$004(Lorg/apache/tools/ant/util/OutputStreamFunneler;)I

    .line 44
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/util/OutputStreamFunneler;Lorg/apache/tools/ant/util/OutputStreamFunneler$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;-><init>(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->closed:Z

    return p0
.end method

.method static synthetic access$502(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->closed:Z

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$300(Lorg/apache/tools/ant/util/OutputStreamFunneler;Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$100(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V

    .line 51
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$200(Lorg/apache/tools/ant/util/OutputStreamFunneler;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$100(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V

    .line 59
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$200(Lorg/apache/tools/ant/util/OutputStreamFunneler;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$100(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V

    .line 67
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$200(Lorg/apache/tools/ant/util/OutputStreamFunneler;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$100(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V

    .line 75
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->this$0:Lorg/apache/tools/ant/util/OutputStreamFunneler;

    invoke-static {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->access$200(Lorg/apache/tools/ant/util/OutputStreamFunneler;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
