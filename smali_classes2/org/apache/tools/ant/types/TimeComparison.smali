.class public Lorg/apache/tools/ant/types/TimeComparison;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "TimeComparison.java"


# static fields
.field public static final AFTER:Lorg/apache/tools/ant/types/TimeComparison;

.field public static final BEFORE:Lorg/apache/tools/ant/types/TimeComparison;

.field public static final EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "before"

    const-string v1, "after"

    const-string v2, "equal"

    .line 29
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/tools/ant/types/TimeComparison;->VALUES:[Ljava/lang/String;

    .line 32
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v3

    sput-object v3, Lorg/apache/tools/ant/types/TimeComparison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 35
    new-instance v3, Lorg/apache/tools/ant/types/TimeComparison;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/tools/ant/types/TimeComparison;->BEFORE:Lorg/apache/tools/ant/types/TimeComparison;

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/TimeComparison;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/TimeComparison;->AFTER:Lorg/apache/tools/ant/types/TimeComparison;

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/TimeComparison;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/TimeComparison;->EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/TimeComparison;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public static compare(JJ)I
    .locals 7

    .line 104
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v5

    move-wide v1, p0

    move-wide v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/tools/ant/types/TimeComparison;->compare(JJJ)I

    move-result p0

    return p0
.end method

.method public static compare(JJJ)I
    .locals 0

    sub-long/2addr p0, p2

    .line 117
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 118
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide p4

    cmp-long p4, p2, p4

    if-lez p4, :cond_0

    div-long/2addr p0, p2

    long-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public evaluate(JJ)Z
    .locals 8

    .line 72
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/types/TimeComparison;->evaluate(JJJ)Z

    move-result p1

    return p1
.end method

.method public evaluate(JJJ)Z
    .locals 3

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TimeComparison;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sub-long/2addr p1, p5

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-ne v0, v2, :cond_3

    add-long/2addr p1, p5

    cmp-long p1, p1, p3

    if-lez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    sub-long/2addr p1, p3

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p5

    if-gtz p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 85
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "TimeComparison value not set."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
