.class public Lorg/apache/tools/ant/types/Comparison;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Comparison.java"


# static fields
.field public static final EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final EQUAL_INDEX:[I

.field public static final GREATER:Lorg/apache/tools/ant/types/Comparison;

.field public static final GREATER_EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final GREATER_INDEX:[I

.field public static final LESS:Lorg/apache/tools/ant/types/Comparison;

.field public static final LESS_EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final LESS_INDEX:[I

.field public static final NOT_EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "equal"

    const-string v1, "greater"

    const-string v2, "less"

    const-string v3, "ne"

    const-string v4, "ge"

    const-string v5, "le"

    const-string v6, "eq"

    const-string v7, "gt"

    const-string v8, "lt"

    const-string v9, "more"

    .line 32
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->VALUES:[Ljava/lang/String;

    .line 37
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "equal"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    .line 40
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "ne"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->NOT_EQUAL:Lorg/apache/tools/ant/types/Comparison;

    .line 43
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "greater"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->GREATER:Lorg/apache/tools/ant/types/Comparison;

    .line 46
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "less"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->LESS:Lorg/apache/tools/ant/types/Comparison;

    .line 49
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "ge"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->GREATER_EQUAL:Lorg/apache/tools/ant/types/Comparison;

    .line 52
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "le"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->LESS_EQUAL:Lorg/apache/tools/ant/types/Comparison;

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x5

    .line 54
    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL_INDEX:[I

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v4, 0x3

    .line 55
    filled-new-array {v1, v4, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->LESS_INDEX:[I

    const/4 v0, 0x7

    const/16 v1, 0x9

    const/4 v3, 0x1

    .line 56
    filled-new-array {v3, v4, v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->GREATER_INDEX:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Comparison;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(I)Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Comparison;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-gez p1, :cond_0

    .line 89
    sget-object p1, Lorg/apache/tools/ant/types/Comparison;->LESS_INDEX:[I

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 90
    sget-object p1, Lorg/apache/tools/ant/types/Comparison;->GREATER_INDEX:[I

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/tools/ant/types/Comparison;->EQUAL_INDEX:[I

    .line 91
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Comparison;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    .line 87
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Comparison value not set."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
