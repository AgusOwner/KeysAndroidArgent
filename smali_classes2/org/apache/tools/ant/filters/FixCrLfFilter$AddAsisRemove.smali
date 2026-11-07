.class public Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddAsisRemove"
.end annotation


# static fields
.field private static final ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

.field private static final ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

.field private static final REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "asis"

    .line 869
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    const-string v0, "add"

    .line 871
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    const-string v0, "remove"

    .line 873
    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 868
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 1

    .line 868
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 1

    .line 868
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-object v0
.end method

.method static synthetic access$1000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 1

    .line 868
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 0

    .line 868
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p0

    return-object p0
.end method

.method private newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 1

    .line 922
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;-><init>()V

    .line 923
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->setValue(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 886
    instance-of v0, p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getIndex()I

    move-result v0

    check-cast p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getIndex()I

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
    .locals 3

    const-string v0, "asis"

    const-string v1, "remove"

    const-string v2, "add"

    .line 877
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 895
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getIndex()I

    move-result v0

    return v0
.end method

.method resolve()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 899
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 902
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 905
    :cond_1
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 908
    :cond_2
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
.end method
