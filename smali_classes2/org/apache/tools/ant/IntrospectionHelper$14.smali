.class Lorg/apache/tools/ant/IntrospectionHelper$14;
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

.field final synthetic val$reflectedArg:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p4, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$reflectedArg:Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1185
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$14;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Lorg/apache/tools/ant/types/EnumeratedAttribute;

    move-result-object p1

    return-object p1
.end method

.method public toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Lorg/apache/tools/ant/types/EnumeratedAttribute;
    .locals 2

    .line 1190
    :try_start_0
    iget-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$reflectedArg:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/EnumeratedAttribute;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->setValue(Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    .line 1194
    :goto_0
    invoke-static {p1}, Lorg/apache/tools/ant/BuildException;->of(Ljava/lang/Throwable;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method
