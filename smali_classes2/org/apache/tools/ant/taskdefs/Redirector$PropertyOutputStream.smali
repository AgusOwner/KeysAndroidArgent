.class Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "Redirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Redirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyOutputStream"
.end annotation


# instance fields
.field private closed:Z

.field private final property:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Redirector;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->this$0:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 71
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->closed:Z

    .line 72
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->property:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->this$0:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->access$000(Lorg/apache/tools/ant/taskdefs/Redirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 78
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->closed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->this$0:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->access$100(Lorg/apache/tools/ant/taskdefs/Redirector;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->this$0:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->access$200(Lorg/apache/tools/ant/taskdefs/Redirector;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->this$0:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->property:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lorg/apache/tools/ant/taskdefs/Redirector;->access$300(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;->closed:Z

    .line 82
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
