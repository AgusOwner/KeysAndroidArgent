.class Lorg/apache/tools/ant/IntrospectionHelper$4;
.super Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/IntrospectionHelper;

.field final synthetic val$wrapped:Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;


# direct methods
.method public static synthetic $r8$lambda$BCNZXEX26QKXfYQO9PRp7ynYlY4(J)Ljava/util/OptionalLong;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CCBlbDhMal_Qn-vd1qnjtKuWRW4()Ljava/util/OptionalLong;
    .locals 1

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$4;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p5, p0, Lorg/apache/tools/ant/IntrospectionHelper$4;->val$wrapped:Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method bridge synthetic toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1074
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$4;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/util/OptionalLong;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$4;->val$wrapped:Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/IntrospectionHelper$4$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/apache/tools/ant/IntrospectionHelper$4$$ExternalSyntheticLambda0;-><init>()V

    .line 1079
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/IntrospectionHelper$4$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/apache/tools/ant/IntrospectionHelper$4$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/OptionalLong;

    return-object p1
.end method
