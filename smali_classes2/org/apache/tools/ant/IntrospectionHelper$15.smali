.class Lorg/apache/tools/ant/IntrospectionHelper$15;
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

.field final synthetic val$attrName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$15;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p4, p0, Lorg/apache/tools/ant/IntrospectionHelper$15;->val$attrName:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1210
    :try_start_0
    invoke-static {p2}, Lorg/apache/tools/ant/util/StringUtils;->parseHumanSizes(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1216
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1212
    :catch_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$15;->val$attrName:Ljava/lang/String;

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Can\'t assign non-numeric value \'%s\' to attribute %s"

    .line 1213
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1206
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$15;->toTargetType(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
