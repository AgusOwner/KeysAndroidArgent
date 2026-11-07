.class public Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrLf"
.end annotation


# static fields
.field private static final ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final LF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "asis"

    .line 932
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    const-string v0, "cr"

    .line 934
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    const-string v0, "crlf"

    .line 936
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    const-string v0, "dos"

    .line 938
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    const-string v0, "lf"

    .line 940
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->LF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    const-string v0, "mac"

    .line 942
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    const-string v0, "unix"

    .line 944
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 931
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 0

    .line 931
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$800()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$900()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method private newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 989
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 998
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;-><init>()V

    .line 999
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->setValue(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 960
    instance-of v0, p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getIndex()I

    move-result v0

    check-cast p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getIndex()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getValues()[Ljava/lang/String;
    .locals 7

    const-string v0, "asis"

    const-string v1, "cr"

    const-string v2, "lf"

    const-string v3, "crlf"

    const-string v4, "mac"

    const-string v5, "unix"

    const-string v6, "dos"

    .line 951
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 968
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getIndex()I

    move-result v0

    return v0
.end method

.method resolve()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 3

    .line 972
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 975
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 978
    :cond_1
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 981
    :cond_2
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->LF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 984
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No replacement for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-object v0
.end method
