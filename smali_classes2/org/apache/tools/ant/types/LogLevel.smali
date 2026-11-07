.class public Lorg/apache/tools/ant/types/LogLevel;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "LogLevel.java"


# static fields
.field public static final DEBUG:Lorg/apache/tools/ant/types/LogLevel;

.field public static final ERR:Lorg/apache/tools/ant/types/LogLevel;

.field public static final INFO:Lorg/apache/tools/ant/types/LogLevel;

.field public static final VERBOSE:Lorg/apache/tools/ant/types/LogLevel;

.field public static final WARN:Lorg/apache/tools/ant/types/LogLevel;

.field private static levels:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lorg/apache/tools/ant/types/LogLevel;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/LogLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/LogLevel;->ERR:Lorg/apache/tools/ant/types/LogLevel;

    .line 32
    new-instance v0, Lorg/apache/tools/ant/types/LogLevel;

    const-string v1, "warn"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/LogLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/LogLevel;->WARN:Lorg/apache/tools/ant/types/LogLevel;

    .line 35
    new-instance v0, Lorg/apache/tools/ant/types/LogLevel;

    const-string v1, "info"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/LogLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/LogLevel;->INFO:Lorg/apache/tools/ant/types/LogLevel;

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/LogLevel;

    const-string v1, "verbose"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/LogLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/LogLevel;->VERBOSE:Lorg/apache/tools/ant/types/LogLevel;

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/LogLevel;

    const-string v1, "debug"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/LogLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/LogLevel;->DEBUG:Lorg/apache/tools/ant/types/LogLevel;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 72
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/ant/types/LogLevel;->levels:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/types/LogLevel;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/LogLevel;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 2

    .line 86
    sget-object v0, Lorg/apache/tools/ant/types/LogLevel;->levels:[I

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/LogLevel;->getIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 6

    const-string v0, "error"

    const-string v1, "warn"

    const-string v2, "warning"

    const-string v3, "info"

    const-string v4, "verbose"

    const-string v5, "debug"

    .line 60
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
