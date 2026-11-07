.class public final synthetic Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/PatternSet;

.field public final synthetic f$1:Lorg/apache/tools/ant/Project;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/Project;

    check-cast p1, Lorg/apache/tools/ant/types/PatternSet;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/Files;->lambda$mergePatterns$0(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet;)V

    return-void
.end method
