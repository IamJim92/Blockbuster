class OrdersController < ApplicationController
  def create
    game = Game.find(params[:game_id])
    order = Order.create!(game: game, amount: game.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
    #   payment_method_types: 'card',
      line_items: [{
        name: game.name,
        images: [game.photo],
        amount: game.price_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
