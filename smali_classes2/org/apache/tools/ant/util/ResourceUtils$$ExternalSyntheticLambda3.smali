.class public final synthetic Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/Resource;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/Resource;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/Resource;

    iput-wide p2, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/Resource;

    iget-wide v1, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->lambda$selectOutOfDateSources$0(Lorg/apache/tools/ant/types/Resource;JLorg/apache/tools/ant/types/Resource;)Z

    move-result p1

    return p1
.end method
