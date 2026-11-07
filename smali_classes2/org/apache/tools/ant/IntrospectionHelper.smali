.class public final Lorg/apache/tools/ant/IntrospectionHelper;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;,
        Lorg/apache/tools/ant/IntrospectionHelper$CreateNestedCreator;,
        Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;,
        Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;,
        Lorg/apache/tools/ant/IntrospectionHelper$Creator;,
        Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;
    }
.end annotation


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final HELPERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/IntrospectionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_REPORT_NESTED_TEXT:I = 0x14

.field protected static final NOT_SUPPORTED_CHILD_POSTFIX:Ljava/lang/String; = "\" element."

.field protected static final NOT_SUPPORTED_CHILD_PREFIX:Ljava/lang/String; = " doesn\'t support the nested \""

.field private static final PRIMITIVE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final addText:Ljava/lang/reflect/Method;

.field private final addTypeMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeSetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final bean:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final nestedCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final nestedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4yQZHbrhl8yIF5ybT1K4kksnFcI()Ljava/util/Optional;
    .locals 1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$K053k4pptvuCknsNmeoS63Q39so()Ljava/util/OptionalInt;
    .locals 1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$LegqZmzQhhH-cXPBYq3j-U41XmQ()Ljava/util/OptionalDouble;
    .locals 1

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Pm2OuTneGwX3VvSZp8zmmfQK2YY()Ljava/util/OptionalLong;
    .locals 1

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->HELPERS:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    new-array v0, v1, [Ljava/lang/Class;

    .line 86
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v0, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v2, v0, v7

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    aput-object v2, v0, v8

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x6

    aput-object v2, v0, v9

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x7

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Class;

    .line 88
    const-class v11, Ljava/lang/Boolean;

    aput-object v11, v2, v3

    const-class v11, Ljava/lang/Byte;

    aput-object v11, v2, v4

    const-class v4, Ljava/lang/Character;

    aput-object v4, v2, v5

    const-class v4, Ljava/lang/Short;

    aput-object v4, v2, v6

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v7

    const-class v4, Ljava/lang/Long;

    aput-object v4, v2, v8

    const-class v4, Ljava/lang/Float;

    aput-object v4, v2, v9

    const-class v4, Ljava/lang/Double;

    aput-object v4, v2, v10

    :goto_0
    if-ge v3, v1, :cond_0

    .line 91
    sget-object v4, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    aget-object v5, v0, v3

    aget-object v6, v2, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_c

    aget-object v5, v0, v4

    .line 191
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 193
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 196
    array-length v9, v8

    const-string v10, "addConfigured"

    const-string v11, "add"

    const/4 v12, 0x1

    if-ne v9, v12, :cond_1

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 197
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 198
    :cond_0
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/IntrospectionHelper;->insertAddTypeMethod(Ljava/lang/reflect/Method;)V

    goto/16 :goto_3

    .line 202
    :cond_1
    const-class v9, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v9, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    array-length v9, v8

    if-ne v9, v12, :cond_2

    aget-object v9, v8, v3

    .line 203
    invoke-direct {p0, v6, v9}, Lorg/apache/tools/ant/IntrospectionHelper;->isHiddenSetMethod(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_3

    .line 207
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->isContainer()Z

    move-result v9

    if-eqz v9, :cond_3

    array-length v9, v8

    if-ne v9, v12, :cond_3

    const-string v9, "addTask"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-class v9, Lorg/apache/tools/ant/Task;

    aget-object v13, v8, v3

    .line 208
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v9, "addText"

    .line 211
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    array-length v9, v8

    if-ne v9, v12, :cond_4

    const-class v9, Ljava/lang/String;

    aget-object v13, v8, v3

    .line 212
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v2, v5

    goto/16 :goto_3

    :cond_4
    const-string v9, "set"

    .line 214
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    array-length v13, v8

    if-ne v13, v12, :cond_7

    aget-object v13, v8, v3

    .line 215
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-nez v13, :cond_7

    .line 216
    invoke-static {v6, v9}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    iget-object v7, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    if-eqz v7, :cond_6

    .line 219
    const-class v9, Ljava/lang/String;

    aget-object v10, v8, v3

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_3

    .line 228
    :cond_5
    const-class v9, Ljava/io/File;

    aget-object v10, v8, v3

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 230
    const-class v9, Lorg/apache/tools/ant/types/Resource;

    invoke-static {v7}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->access$000(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-class v9, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-static {v7}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->access$000(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_3

    .line 244
    :cond_6
    aget-object v7, v8, v3

    invoke-direct {p0, v5, v7, v6}, Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 246
    iget-object v7, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    aget-object v8, v8, v3

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v7, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_7
    const-string v9, "create"

    .line 249
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-nez v13, :cond_8

    .line 250
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-nez v13, :cond_8

    array-length v13, v8

    if-nez v13, :cond_8

    .line 252
    invoke-static {v6, v9}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 255
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    .line 256
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v7, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    new-instance v8, Lorg/apache/tools/ant/IntrospectionHelper$CreateNestedCreator;

    invoke-direct {v8, v5}, Lorg/apache/tools/ant/IntrospectionHelper$CreateNestedCreator;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 259
    :cond_8
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 260
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    array-length v9, v8

    if-ne v9, v12, :cond_9

    const-class v9, Ljava/lang/String;

    aget-object v13, v8, v3

    .line 261
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    aget-object v9, v8, v3

    .line 262
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-nez v9, :cond_9

    aget-object v9, v8, v3

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_9

    .line 266
    :try_start_0
    aget-object v7, v8, v3

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 268
    :catch_0
    :try_start_1
    aget-object v7, v8, v3

    new-array v9, v12, [Ljava/lang/Class;

    const-class v11, Lorg/apache/tools/ant/Project;

    aput-object v11, v9, v3

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 270
    :goto_1
    invoke-static {v6, v10}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    iget-object v9, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    aget-object v8, v8, v3

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    new-instance v9, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;

    const/4 v10, 0x2

    invoke-direct {v9, v5, v7, v10}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 277
    :cond_9
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 278
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    array-length v7, v8

    if-ne v7, v12, :cond_b

    const-class v7, Ljava/lang/String;

    aget-object v9, v8, v3

    .line 279
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    aget-object v7, v8, v3

    .line 280
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-nez v7, :cond_b

    aget-object v7, v8, v3

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_b

    .line 284
    :try_start_2
    aget-object v7, v8, v3

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 286
    :catch_1
    :try_start_3
    aget-object v7, v8, v3

    new-array v9, v12, [Ljava/lang/Class;

    const-class v10, Lorg/apache/tools/ant/Project;

    aput-object v10, v9, v3

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 288
    :goto_2
    invoke-static {v6, v11}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    iget-object v9, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    goto :goto_3

    .line 297
    :cond_a
    iget-object v9, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    aget-object v8, v8, v3

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    new-instance v9, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;

    invoke-direct {v9, v5, v7, v12}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_b
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 305
    :cond_c
    iput-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$400(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;
    .locals 0

    .line 69
    invoke-static {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p0, p1}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    .line 1574
    sget-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->HELPERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private condenseText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1698
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    return-object p1

    .line 1702
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x8

    sub-int/2addr p1, v1

    const-string v2, "..."

    invoke-virtual {v0, v1, p1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1588
    iget-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    .line 1591
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object p2

    .line 1593
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-direct {p0, p2, p3, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->createRestricted(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    move-result-object v1

    .line 1594
    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-direct {p0, p2, p3, v2}, Lorg/apache/tools/ant/IntrospectionHelper;->createTopLevel(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    move-result-object p2

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 1601
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ambiguous: type and component definitions for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    move-object v1, p2

    .line 1608
    :cond_4
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object p2

    .line 1609
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz p3, :cond_5

    .line 1610
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    .line 1611
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->createObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p2

    .line 1613
    :cond_5
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object p1

    .line 1616
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$18;

    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$800(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p3, p0, v0, p2, p1}, Lorg/apache/tools/ant/IntrospectionHelper$18;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method private createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;"
        }
    .end annotation

    .line 1041
    const-class v0, Ljava/util/Optional;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1042
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    .line 1043
    const-class v2, Ljava/lang/Object;

    .line 1044
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 1045
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    .line 1046
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 1047
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    goto :goto_0

    .line 1048
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 1049
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    .line 1052
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v8

    .line 1053
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$2;

    new-instance v7, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda0;-><init>()V

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/apache/tools/ant/IntrospectionHelper$2;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)V

    return-object p3

    .line 1061
    :cond_2
    const-class v0, Ljava/util/OptionalInt;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v6

    .line 1063
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$3;

    new-instance v5, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda1;-><init>()V

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/IntrospectionHelper$3;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)V

    return-object p3

    .line 1072
    :cond_3
    const-class v0, Ljava/util/OptionalLong;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v6

    .line 1074
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$4;

    new-instance v5, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda2;-><init>()V

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/IntrospectionHelper$4;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)V

    return-object p3

    .line 1083
    :cond_4
    const-class v0, Ljava/util/OptionalDouble;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v6

    .line 1085
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$5;

    new-instance v5, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lorg/apache/tools/ant/IntrospectionHelper$$ExternalSyntheticLambda3;-><init>()V

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/IntrospectionHelper$5;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/function/Supplier;Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)V

    return-object p3

    .line 1096
    :cond_5
    sget-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Class;

    .line 1099
    const-class v0, Ljava/lang/Object;

    if-ne v0, v8, :cond_6

    .line 1100
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$6;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$6;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object p3

    .line 1110
    :cond_6
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1111
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$7;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$7;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object p3

    .line 1119
    :cond_7
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1120
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$8;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    .line 1132
    :cond_8
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1133
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$9;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$9;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object p3

    .line 1141
    :cond_9
    const-class v0, Ljava/lang/Class;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1142
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$10;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$10;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object p3

    .line 1154
    :cond_a
    const-class v0, Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1155
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$11;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$11;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object p3

    .line 1164
    :cond_b
    const-class v0, Ljava/nio/file/Path;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1165
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$12;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$12;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object p3

    .line 1174
    :cond_c
    const-class v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    .line 1184
    :cond_d
    const-class v0, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1185
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$14;

    invoke-direct {p3, p0, p1, p2, v8}, Lorg/apache/tools/ant/IntrospectionHelper$14;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p3

    .line 1201
    :cond_e
    invoke-direct {p0, v8, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->getEnumSetter(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 1205
    :cond_f
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1206
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$15;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    :cond_10
    const/4 p3, 0x2

    const/4 v0, 0x1

    :try_start_0
    new-array p3, p3, [Ljava/lang/Class;

    .line 1229
    const-class v2, Lorg/apache/tools/ant/Project;

    aput-object v2, p3, v1

    const-class v2, Ljava/lang/String;

    aput-object v2, p3, v0

    invoke-virtual {v8, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p3

    move v6, v0

    goto :goto_1

    :catch_0
    :try_start_1
    new-array p3, v0, [Ljava/lang/Class;

    .line 1234
    const-class v0, Ljava/lang/String;

    aput-object v0, p3, v1

    invoke-virtual {v8, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p3

    move v6, v1

    .line 1244
    :goto_1
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$16;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lorg/apache/tools/ant/IntrospectionHelper$16;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;ZLjava/lang/reflect/Constructor;Ljava/lang/Class;)V

    return-object p3

    :catch_1
    const/4 p1, 0x0

    return-object p1

    .line 1175
    :cond_11
    :goto_2
    new-instance p3, Lorg/apache/tools/ant/IntrospectionHelper$13;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$13;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object p3
.end method

.method private createDynamicElement(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 587
    instance-of v0, p1, Lorg/apache/tools/ant/DynamicElementNS;

    if-eqz v0, :cond_0

    .line 588
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/DynamicElementNS;

    .line 589
    invoke-interface {v0, p2, p3, p4}, Lorg/apache/tools/ant/DynamicElementNS;->createDynamicElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 591
    instance-of p4, p1, Lorg/apache/tools/ant/DynamicElement;

    if-eqz p4, :cond_1

    .line 592
    check-cast p1, Lorg/apache/tools/ant/DynamicElement;

    .line 593
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 594
    invoke-virtual {p3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/tools/ant/DynamicElement;->createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method private createRestricted(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/ComponentHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;"
        }
    .end annotation

    .line 1753
    invoke-virtual {p1}, Lorg/apache/tools/ant/ComponentHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 1756
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->findRestrictedDefinition(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1763
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v1

    .line 1762
    invoke-direct {p0, v1, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1768
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1774
    new-instance p1, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    invoke-direct {p1, p3, v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object p1

    .line 1770
    :cond_1
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " of type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1772
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1765
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Ant Internal Error - contract mismatch for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTopLevel(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/ComponentHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;"
        }
    .end annotation

    .line 1779
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->getComponentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 1783
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-direct {p0, p3, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v0

    .line 1787
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1788
    new-instance p2, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 815
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .line 816
    instance-of v0, p0, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    .line 817
    check-cast p0, Lorg/apache/tools/ant/BuildException;

    return-object p0

    .line 819
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1682
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 1683
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 1684
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    move-object v0, v2

    move-object v1, v3

    goto :goto_0

    .line 1688
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1689
    :cond_3
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ambiguous: types "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1690
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    return-object v0
.end method

.method private findRestrictedDefinition(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/AntTypeDefinition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/ComponentHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lorg/apache/tools/ant/AntTypeDefinition;"
        }
    .end annotation

    .line 1723
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->getRestrictedDefinitions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1727
    :cond_0
    monitor-enter v0

    .line 1728
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 1729
    invoke-virtual {p1}, Lorg/apache/tools/ant/ComponentHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 1733
    :cond_1
    invoke-direct {p0, v5, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    move-object v1, v4

    move-object v3, v5

    goto :goto_0

    .line 1738
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ambiguous: restricted definitions for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1746
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getElementName(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1312
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEnumSetter(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;"
        }
    .end annotation

    .line 1279
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$17;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/apache/tools/ant/IntrospectionHelper$17;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getHelper(Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/tools/ant/IntrospectionHelper;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    invoke-static {v0, p0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object p0

    return-object p0
.end method

.method public static getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/tools/ant/IntrospectionHelper;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 351
    new-instance p0, Lorg/apache/tools/ant/IntrospectionHelper;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/IntrospectionHelper;-><init>(Ljava/lang/Class;)V

    return-object p0

    .line 353
    :cond_0
    sget-object p0, Lorg/apache/tools/ant/IntrospectionHelper;->HELPERS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper;

    if-eqz v0, :cond_1

    .line 354
    iget-object v1, v0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    if-ne v1, p1, :cond_1

    return-object v0

    .line 362
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/IntrospectionHelper;-><init>(Ljava/lang/Class;)V

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/IntrospectionHelper;

    if-eqz v1, :cond_2

    .line 365
    iget-object v2, v1, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    if-ne v2, p1, :cond_2

    .line 366
    monitor-exit p0

    return-object v1

    .line 369
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getNestedCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 542
    invoke-static {p4}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {p4}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "antlib:org.apache.tools.ant"

    .line 545
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    move-object v0, v4

    .line 548
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, v4

    .line 552
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v2

    goto :goto_1

    .line 553
    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    :goto_1
    if-nez p2, :cond_4

    .line 556
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper;->createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object p2

    :cond_4
    if-nez p2, :cond_8

    .line 558
    instance-of v0, p3, Lorg/apache/tools/ant/DynamicElementNS;

    if-nez v0, :cond_5

    instance-of v0, p3, Lorg/apache/tools/ant/DynamicElement;

    if-eqz v0, :cond_8

    :cond_5
    if-nez p5, :cond_6

    move-object v0, v1

    goto :goto_2

    .line 560
    :cond_6
    invoke-virtual {p5}, Lorg/apache/tools/ant/UnknownElement;->getQName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez p5, :cond_7

    goto :goto_3

    .line 562
    :cond_7
    invoke-virtual {p5}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 561
    :goto_3
    invoke-direct {p0, p3, v4, v1, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->createDynamicElement(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_8

    .line 564
    new-instance p2, Lorg/apache/tools/ant/IntrospectionHelper$1;

    invoke-direct {p2, p0, v2, p5}, Lorg/apache/tools/ant/IntrospectionHelper$1;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_8
    if-nez p2, :cond_9

    .line 573
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper;->throwNotSupported(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    return-object p2
.end method

.method private static getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private insertAddTypeMethod(Ljava/lang/reflect/Method;)V
    .locals 6

    .line 1649
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1650
    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 1652
    iget-object v4, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 1653
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "addConfigured"

    .line 1654
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 1660
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1661
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1665
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isHiddenSetMethod(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "setLocation"

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/tools/ant/Location;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "setTaskType"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 480
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " doesn\'t support nested text data (\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 486
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->condenseText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_1
    :try_start_0
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 494
    invoke-static {p1}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 492
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v2, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 624
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/IntrospectionHelper;->getNestedCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object p3

    const/4 v0, 0x0

    .line 626
    :try_start_0
    invoke-virtual {p3, p1, p2, v0}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 628
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 635
    invoke-static {p1}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 633
    :goto_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAddTextMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsCharacters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    return-object v0

    .line 878
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support nested text data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAttributeMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    if-eqz v0, :cond_0

    .line 924
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->access$300(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    .line 920
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/UnsupportedAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 921
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 859
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/UnsupportedAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 860
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributes()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getElementCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$Creator;
    .locals 0

    .line 653
    invoke-direct/range {p0 .. p5}, Lorg/apache/tools/ant/IntrospectionHelper;->getNestedCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object p2

    .line 654
    new-instance p4, Lorg/apache/tools/ant/IntrospectionHelper$Creator;

    const/4 p5, 0x0

    invoke-direct {p4, p1, p3, p2, p5}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;Lorg/apache/tools/ant/IntrospectionHelper$1;)V

    return-object p4
.end method

.method public getElementMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    if-eqz v0, :cond_0

    .line 903
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->access$200(Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    .line 899
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/UnsupportedElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 900
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the nested \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/UnsupportedElementException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getElementType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 837
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/UnsupportedElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 838
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the nested \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/UnsupportedElementException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNestedElementMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNestedElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isContainer()Z
    .locals 2

    .line 684
    const-class v0, Lorg/apache/tools/ant/TaskContainer;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 2

    .line 669
    const-class v0, Lorg/apache/tools/ant/DynamicElement;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/apache/tools/ant/DynamicElementNS;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 395
    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    .line 397
    instance-of v0, p2, Lorg/apache/tools/ant/DynamicAttributeNS;

    const-string v1, ":"

    if-eqz v0, :cond_1

    .line 398
    check-cast p2, Lorg/apache/tools/ant/DynamicAttributeNS;

    .line 399
    invoke-static {p3}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-static {p3}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p1, p3, v0, p4}, Lorg/apache/tools/ant/DynamicAttributeNS;->setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_1
    instance-of v0, p2, Lorg/apache/tools/ant/DynamicObjectAttribute;

    if-eqz v0, :cond_2

    .line 407
    check-cast p2, Lorg/apache/tools/ant/DynamicObjectAttribute;

    .line 408
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lorg/apache/tools/ant/DynamicObjectAttribute;->setDynamicAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 411
    :cond_2
    instance-of v0, p2, Lorg/apache/tools/ant/DynamicAttribute;

    if-eqz v0, :cond_3

    .line 412
    check-cast p2, Lorg/apache/tools/ant/DynamicAttribute;

    .line 413
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/apache/tools/ant/DynamicAttribute;->setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 416
    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    return-void

    .line 419
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->getElementName(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " doesn\'t support the \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" attribute."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 421
    new-instance p2, Lorg/apache/tools/ant/UnsupportedAttributeException;

    invoke-direct {p2, p1, p3}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_5
    if-eqz v0, :cond_6

    .line 425
    :try_start_0
    invoke-virtual {v0, p1, p2, p4}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->setObject(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 430
    invoke-static {p1}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 428
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    :goto_1
    return-void
.end method

.method public setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public storeElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    .line 793
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    if-nez p1, :cond_1

    return-void

    .line 798
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->store(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 803
    invoke-static {p1}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 801
    :goto_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public supportsCharacters()Z
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsNestedElement(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 696
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsNestedElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public supportsNestedElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 715
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsReflectElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public supportsNestedElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Z
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    invoke-direct {p0, p3, p4, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object p3

    if-nez p3, :cond_2

    .line 740
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->isDynamic()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsReflectElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public supportsReflectElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 754
    invoke-static {p2}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 758
    :cond_0
    invoke-static {p2}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "antlib:org.apache.tools.ant"

    .line 759
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    .line 765
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public throwNotSupported(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " doesn\'t support the nested \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" element."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    new-instance p2, Lorg/apache/tools/ant/UnsupportedElementException;

    invoke-direct {p2, p1, p3}, Lorg/apache/tools/ant/UnsupportedElementException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method
