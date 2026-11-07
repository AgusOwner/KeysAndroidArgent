.class public Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;
.super Ljava/lang/Object;
.source "MacroDef.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedSequential"
.end annotation


# instance fields
.field private nested:Ljava/util/List;
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

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNested()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    return-object v0
.end method

.method public similar(Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;)Z
    .locals 5

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 169
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/UnknownElement;

    .line 170
    iget-object v4, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/UnknownElement;

    .line 171
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/UnknownElement;->similar(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
