.class public Lorg/apache/tools/ant/types/Quantifier;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Quantifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Quantifier$Predicate;
    }
.end annotation


# static fields
.field public static final ALL:Lorg/apache/tools/ant/types/Quantifier;

.field public static final ANY:Lorg/apache/tools/ant/types/Quantifier;

.field public static final MAJORITY:Lorg/apache/tools/ant/types/Quantifier;

.field public static final NONE:Lorg/apache/tools/ant/types/Quantifier;

.field public static final ONE:Lorg/apache/tools/ant/types/Quantifier;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda1;-><init>()V

    .line 47
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->VALUES:[Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ALL:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->ALL:Lorg/apache/tools/ant/types/Quantifier;

    .line 53
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ANY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->ANY:Lorg/apache/tools/ant/types/Quantifier;

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->ONE:Lorg/apache/tools/ant/types/Quantifier;

    .line 59
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->MAJORITY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->MAJORITY:Lorg/apache/tools/ant/types/Quantifier;

    .line 63
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->NONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->NONE:Lorg/apache/tools/ant/types/Quantifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Quantifier;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 138
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->getNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Quantifier;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$static$0(I)[Ljava/lang/String;
    .locals 0

    .line 47
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public evaluate(II)Z
    .locals 2

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Quantifier;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 176
    sget-object v1, Lorg/apache/tools/ant/types/Quantifier;->VALUES:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->get(Ljava/lang/String;)Lorg/apache/tools/ant/types/Quantifier$Predicate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->eval(II)Z

    move-result p1

    return p1

    .line 174
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Quantifier value not set."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluate([Z)Z
    .locals 4

    .line 157
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v3, p1, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    array-length p1, p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/tools/ant/types/Quantifier;->evaluate(II)Z

    move-result p1

    return p1
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Lorg/apache/tools/ant/types/Quantifier;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
