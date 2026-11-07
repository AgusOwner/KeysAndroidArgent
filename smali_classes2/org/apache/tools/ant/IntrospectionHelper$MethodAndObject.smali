.class Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodAndObject"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1710
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->method:Ljava/lang/reflect/Method;

    .line 1711
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;
    .locals 0

    .line 1706
    iget-object p0, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->object:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1706
    iget-object p0, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method
