.class Lorg/apache/tools/ant/taskdefs/PathConvert$2;
.super Lorg/apache/tools/ant/util/PropertyOutputStream;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/PathConvert;->createOutput()Lorg/apache/tools/ant/taskdefs/PathConvert$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/PathConvert;Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$2;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/util/PropertyOutputStream;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 435
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$2;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->access$100(Lorg/apache/tools/ant/taskdefs/PathConvert;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert$2;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 436
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/util/PropertyOutputStream;->close()V

    .line 437
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$2;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$2;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/PathConvert;->access$200(Lorg/apache/tools/ant/taskdefs/PathConvert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$2;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$2;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/PathConvert;->access$200(Lorg/apache/tools/ant/taskdefs/PathConvert;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/PathConvert;->log(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
