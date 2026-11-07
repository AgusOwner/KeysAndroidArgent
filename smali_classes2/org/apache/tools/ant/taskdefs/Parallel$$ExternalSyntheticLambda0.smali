.class public final synthetic Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Parallel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    check-cast p1, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Parallel;->lambda$spinThreads$0$org-apache-tools-ant-taskdefs-Parallel(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    move-result-object p1

    return-object p1
.end method
