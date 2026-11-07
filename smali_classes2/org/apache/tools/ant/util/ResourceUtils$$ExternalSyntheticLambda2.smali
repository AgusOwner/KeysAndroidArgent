.class public final synthetic Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda2;->f$0:J

    return-void
.end method


# virtual methods
.method public final getTargetSelectorForSource(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .locals 2

    iget-wide v0, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda2;->f$0:J

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->lambda$selectOutOfDateSources$1(JLorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    move-result-object p1

    return-object p1
.end method
