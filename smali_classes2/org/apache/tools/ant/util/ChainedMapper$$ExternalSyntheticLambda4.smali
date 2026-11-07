.class public final synthetic Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    check-cast p2, Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-static {p1, p2}, Lorg/apache/tools/ant/util/ChainedMapper;->lambda$mapFileName$1([Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
