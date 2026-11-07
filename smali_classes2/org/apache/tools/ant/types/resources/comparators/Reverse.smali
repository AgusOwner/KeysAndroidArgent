.class public Lorg/apache/tools/ant/types/resources/comparators/Reverse;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "Reverse.java"


# static fields
.field private static final ONE_NESTED:Ljava/lang/String; = "You must not nest more than one ResourceComparator for reversal."


# instance fields
.field private nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;


# direct methods
.method public static synthetic $r8$lambda$m4cTMtok3Q8Lu0HjzFYdxSmUZUc()Ljava/util/Comparator;
    .locals 1

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->setChecked(Z)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "You must not nest more than one ResourceComparator for reversal."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    if-eqz v0, :cond_2

    .line 86
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_2
    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
