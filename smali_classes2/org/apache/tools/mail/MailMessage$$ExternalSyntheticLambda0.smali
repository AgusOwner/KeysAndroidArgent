.class public final synthetic Lorg/apache/tools/mail/MailMessage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/mail/MailMessage;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/mail/MailMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/mail/MailMessage$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/mail/MailMessage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/mail/MailMessage;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/mail/MailMessage;->lambda$flushHeaders$0$org-apache-tools-mail-MailMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
