.class Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;
.super Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddNestedCreator"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final ADD_CONFIGURED:I = 0x2


# instance fields
.field private final behavior:I

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Constructor<",
            "*>;I)V"
        }
    .end annotation

    .line 1482
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;-><init>(Ljava/lang/reflect/Method;)V

    .line 1483
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->constructor:Ljava/lang/reflect/Constructor;

    .line 1484
    iput p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->behavior:I

    return-void
.end method

.method private istore(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1519
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    if-nez p3, :cond_1

    .line 1496
    iget-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->constructor:Ljava/lang/reflect/Constructor;

    .line 1497
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0

    .line 1498
    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1496
    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1500
    :cond_1
    instance-of v0, p3, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz v0, :cond_2

    .line 1501
    check-cast p3, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    invoke-virtual {p3, p1}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->createObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p3

    .line 1503
    :cond_2
    iget p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->behavior:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1504
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->istore(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object p3
.end method

.method isPolyMorphic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method store(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1512
    iget v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->behavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1513
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->istore(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
