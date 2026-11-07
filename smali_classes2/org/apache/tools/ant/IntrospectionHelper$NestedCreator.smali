.class abstract Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NestedCreator"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1436
    iget-object p0, p0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method


# virtual methods
.method abstract create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method

.method getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1443
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getRealObject()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method isPolyMorphic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method store(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    return-void
.end method
