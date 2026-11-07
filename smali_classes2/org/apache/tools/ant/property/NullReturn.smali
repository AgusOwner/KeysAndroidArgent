.class public final Lorg/apache/tools/ant/property/NullReturn;
.super Ljava/lang/Object;
.source "NullReturn.java"


# static fields
.field public static final NULL:Lorg/apache/tools/ant/property/NullReturn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/apache/tools/ant/property/NullReturn;

    invoke-direct {v0}, Lorg/apache/tools/ant/property/NullReturn;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/property/NullReturn;->NULL:Lorg/apache/tools/ant/property/NullReturn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
