.class abstract Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AttributeSetter"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final supplyWhenNull:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "*>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1533
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    .line 1539
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    .line 1540
    iput-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->supplyWhenNull:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/Class;
    .locals 0

    .line 1527
    iget-object p0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1527
    iget-object p0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic lambda$new$0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final setObject(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1545
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 1547
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 1552
    invoke-static {}, Lorg/apache/tools/ant/IntrospectionHelper;->access$600()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    .line 1549
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    .line 1550
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "set"

    invoke-static {p3, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Attempt to set primitive %s to null on %s"

    invoke-direct {p1, p3, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    .line 1555
    iget-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->supplyWhenNull:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    :cond_2
    if-eqz p3, :cond_3

    .line 1557
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1558
    :cond_3
    iget-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1562
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1566
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
