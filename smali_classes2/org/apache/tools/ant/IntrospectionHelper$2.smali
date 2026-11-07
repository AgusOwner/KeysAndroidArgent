.class Lorg/apache/tools/ant/IntrospectionHelper$2;
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
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$2;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p5, p0, Lorg/apache/tools/ant/IntrospectionHelper$2;->val$wrapped:Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method bridge synthetic toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1053
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$2;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$2;->val$wrapped:Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
