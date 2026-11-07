.class public Lorg/apache/tools/ant/property/LocalProperties;
.super Ljava/lang/InheritableThreadLocal;
.source "LocalProperties.java"

# interfaces
.implements Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;
.implements Lorg/apache/tools/ant/PropertyHelper$PropertySetter;
.implements Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Lorg/apache/tools/ant/property/LocalPropertyStack;",
        ">;",
        "Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;",
        "Lorg/apache/tools/ant/PropertyHelper$PropertySetter;",
        "Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;
    .locals 3

    const-class v0, Lorg/apache/tools/ant/property/LocalProperties;

    monitor-enter v0

    :try_start_0
    const-string v1, "ant.LocalProperties"

    .line 42
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/property/LocalProperties;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lorg/apache/tools/ant/property/LocalProperties;

    invoke-direct {v1}, Lorg/apache/tools/ant/property/LocalProperties;-><init>()V

    const-string v2, "ant.LocalProperties"

    .line 45
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addLocal(Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/property/LocalPropertyStack;->addLocal(Ljava/lang/String;)V

    return-void
.end method

.method public copy()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->copy()Lorg/apache/tools/ant/property/LocalPropertyStack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/property/LocalProperties;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public enterScope()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->enterScope()V

    return-void
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/property/LocalPropertyStack;->evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public exitScope()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->exitScope()V

    return-void
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->initialValue()Lorg/apache/tools/ant/property/LocalPropertyStack;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized initialValue()Lorg/apache/tools/ant/property/LocalPropertyStack;
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-direct {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/property/LocalPropertyStack;->set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result p1

    return p1
.end method

.method public setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/property/LocalPropertyStack;->setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result p1

    return p1
.end method
