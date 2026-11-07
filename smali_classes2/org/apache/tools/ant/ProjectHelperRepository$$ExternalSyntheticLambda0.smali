.class public final synthetic Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/Resource;

    check-cast p1, Lorg/apache/tools/ant/ProjectHelper;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/ProjectHelperRepository;->lambda$getProjectHelperForAntlib$1(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/ProjectHelper;)Z

    move-result p1

    return p1
.end method
