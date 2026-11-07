.class public Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;
.super Ljava/lang/Object;
.source "Parallel.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Parallel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskList"
.end annotation


# instance fields
.field private tasks:Ljava/util/List;
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->tasks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->tasks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
