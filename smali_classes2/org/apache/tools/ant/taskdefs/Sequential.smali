.class public Lorg/apache/tools/ant/taskdefs/Sequential;
.super Lorg/apache/tools/ant/Task;
.source "Sequential.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# instance fields
.field private nestedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sequential;->nestedTasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sequential;->nestedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sequential;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalProperties;->enterScope()V

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sequential;->nestedTasks:Ljava/util/List;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Sequential$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Sequential$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    .line 70
    throw v1
.end method
