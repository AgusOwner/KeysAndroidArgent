.class Lorg/apache/tools/ant/IntrospectionHelper$16;
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

.field final synthetic val$finalConstructor:Ljava/lang/reflect/Constructor;

.field final synthetic val$finalIncludeProject:Z

.field final synthetic val$reflectedArg:Ljava/lang/Class;


# direct methods
.method public static synthetic $r8$lambda$z43y5TFLKSM34HoeX5O_uVqVhkc(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;ZLjava/lang/reflect/Constructor;Ljava/lang/Class;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$16;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-boolean p4, p0, Lorg/apache/tools/ant/IntrospectionHelper$16;->val$finalIncludeProject:Z

    iput-object p5, p0, Lorg/apache/tools/ant/IntrospectionHelper$16;->val$finalConstructor:Ljava/lang/reflect/Constructor;

    iput-object p6, p0, Lorg/apache/tools/ant/IntrospectionHelper$16;->val$reflectedArg:Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic lambda$toTargetType$0(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1248
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$16;->val$finalIncludeProject:Z

    if-eqz v0, :cond_0

    .line 1249
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1251
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$16;->val$finalConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1253
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 1259
    :goto_1
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_3

    .line 1265
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/IntrospectionHelper$16$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/IntrospectionHelper$16$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/IntrospectionHelper$16$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/IntrospectionHelper$16$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1269
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_1

    .line 1271
    :cond_2
    invoke-static {p1}, Lorg/apache/tools/ant/BuildException;->of(Ljava/lang/Throwable;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 1260
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$16;->val$reflectedArg:Ljava/lang/Class;

    .line 1262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Can\'t convert value \'%s\' to type %s, reason: %s with message \'%s\'"

    .line 1260
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
