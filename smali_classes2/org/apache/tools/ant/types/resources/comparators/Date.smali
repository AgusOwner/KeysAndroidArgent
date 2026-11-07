.class public Lorg/apache/tools/ant/types/resources/comparators/Date;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "Date.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/tools/ant/types/resources/comparators/Date$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/comparators/Date$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
