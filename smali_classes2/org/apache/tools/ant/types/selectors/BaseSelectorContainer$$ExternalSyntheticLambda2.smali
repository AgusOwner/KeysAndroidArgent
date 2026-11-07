.class public final synthetic Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->$r8$lambda$4TPVzajetVoEdWRmhH2rKJBHNLM(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    return-object p1
.end method
