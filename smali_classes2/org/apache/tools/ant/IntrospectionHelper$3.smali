.class Lorg/apache/tools/ant/IntrospectionHelper$3;
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
.method public static synthetic $r8$lambda$3xarQn9-01mX0ryMDVLUOUVo4mo(I)Ljava/util/OptionalInt;
    .locals 0

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8ztn_HnA7Cd3jVD8V42p8P2lXeo()Ljava/util/OptionalInt;
    .locals 1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$3;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p5, p0, Lorg/apache/tools/ant/IntrospectionHelper$3;->val$wrapped:Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method bridge synthetic toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1063
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$3;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/util/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/util/OptionalInt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$3;->val$wrapped:Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/IntrospectionHelper$3$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/apache/tools/ant/IntrospectionHelper$3$$ExternalSyntheticLambda0;-><init>()V

    .line 1068
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/IntrospectionHelper$3$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/apache/tools/ant/IntrospectionHelper$3$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/OptionalInt;

    return-object p1
.end method
