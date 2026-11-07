.class abstract enum Lorg/apache/tools/ant/types/Quantifier$Predicate;
.super Ljava/lang/Enum;
.source "Quantifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Quantifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Predicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/types/Quantifier$Predicate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum ALL:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum ANY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum MAJORITY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum NONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum ONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;


# instance fields
.field final names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/tools/ant/types/Quantifier$Predicate;

    const/4 v1, 0x0

    .line 65
    sget-object v2, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ALL:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ANY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/tools/ant/types/Quantifier$Predicate;->MAJORITY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/tools/ant/types/Quantifier$Predicate;->NONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 66
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier$Predicate$1;

    const-string v1, "each"

    const-string v2, "every"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALL"

    const/4 v3, 0x0

    const-string v4, "all"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/tools/ant/types/Quantifier$Predicate$1;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ALL:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 73
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier$Predicate$2;

    const-string v1, "some"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ANY"

    const/4 v4, 0x1

    const-string v5, "any"

    invoke-direct {v0, v2, v4, v5, v1}, Lorg/apache/tools/ant/types/Quantifier$Predicate$2;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ANY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 80
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier$Predicate$3;

    const-string v1, "one"

    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ONE"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5, v1, v2}, Lorg/apache/tools/ant/types/Quantifier$Predicate$3;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 87
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier$Predicate$4;

    const-string v1, "most"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAJORITY"

    const/4 v4, 0x3

    const-string v5, "majority"

    invoke-direct {v0, v2, v4, v5, v1}, Lorg/apache/tools/ant/types/Quantifier$Predicate$4;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->MAJORITY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 94
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier$Predicate$5;

    const-string v1, "none"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "NONE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/tools/ant/types/Quantifier$Predicate$5;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->NONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 65
    invoke-static {}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->$values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->$VALUES:[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 111
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {p1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 113
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->names:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Lorg/apache/tools/ant/types/Quantifier$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/types/Quantifier$Predicate;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/tools/ant/types/Quantifier$Predicate;
    .locals 2

    .line 102
    invoke-static {}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/types/Quantifier$Predicate;

    return-object p0
.end method

.method static synthetic lambda$get$0(Ljava/lang/String;Lorg/apache/tools/ant/types/Quantifier$Predicate;)Z
    .locals 0

    .line 102
    iget-object p1, p1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->names:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$get$1(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/types/Quantifier$Predicate;
    .locals 1

    .line 65
    const-class v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/types/Quantifier$Predicate;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->$VALUES:[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/types/Quantifier$Predicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Quantifier$Predicate;

    return-object v0
.end method


# virtual methods
.method abstract eval(II)Z
.end method

.method getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->names:Ljava/util/Set;

    return-object v0
.end method
