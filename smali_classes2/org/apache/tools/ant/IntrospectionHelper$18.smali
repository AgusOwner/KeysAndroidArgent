.class Lorg/apache/tools/ant/IntrospectionHelper$18;
.super Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/IntrospectionHelper;->createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/IntrospectionHelper;

.field final synthetic val$nestedObject:Ljava/lang/Object;

.field final synthetic val$realObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1616
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$18;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$18;->val$realObject:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/tools/ant/IntrospectionHelper$18;->val$nestedObject:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1620
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$18;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Configured"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1621
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$18;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$18;->val$realObject:Ljava/lang/Object;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$18;->val$nestedObject:Ljava/lang/Object;

    return-object p1
.end method

.method getRealObject()Ljava/lang/Object;
    .locals 1

    .line 1628
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$18;->val$realObject:Ljava/lang/Object;

    return-object v0
.end method

.method store(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$18;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Configured"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1635
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$18;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$18;->val$realObject:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
