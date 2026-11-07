.class public final enum Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
.super Ljava/lang/Enum;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum DOUBLE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum INT:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum LONG:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_NODE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_NODESET:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_NUMBER:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final XPATH_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
    .locals 10

    .line 1138
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->INT:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->LONG:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v4, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->DOUBLE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v5, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v6, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v7, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NUMBER:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v8, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NODE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    sget-object v9, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NODESET:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1140
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1141
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1142
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v1, "INT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->INT:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1143
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v1, "LONG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->LONG:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1144
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->DOUBLE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1145
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v1, "XPATH_STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1146
    new-instance v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v2, "XPATH_BOOLEAN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1147
    new-instance v2, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v3, "XPATH_NUMBER"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NUMBER:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1148
    new-instance v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v4, "XPATH_NODE"

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NODE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1149
    new-instance v4, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v5, "XPATH_NODESET"

    const/16 v6, 0x9

    invoke-direct {v4, v5, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NODESET:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1138
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->$values()[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    move-result-object v5

    sput-object v5, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1154
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1155
    sget-object v6, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_TYPES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
    .locals 1

    .line 1138
    const-class v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
    .locals 1

    .line 1138
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    return-object v0
.end method
