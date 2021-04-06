<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Models\Rating;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use League\Flysystem\Exception;

class UserRatingController extends Controller
{
    public function index()
    {

    }

    public function addRatingProduct(Request $request)
    {
        try {
            $transactions = Transaction::where('tst_user_id', Auth::id())
                ->where('tst_status', 3)->pluck('id');
            $check = false;
            foreach ($transactions as  $value) {
                $oders = Order::with(['product:id'])
                    ->where('od_transaction_id', $value)
                    ->get()->toArray();
                foreach ($oders as $oder) {
                    foreach ($oder['product'] as $product) {
                        if ($product == $request->product_id) {
                            return $check = true;
                        }
                    }
                }
            }
            if (!$check) {
                return response([
                    'html'     => $html ?? null,
                    'messages' => 'Đánh giá sản phẩm thất bại! (bạn chưa mua sản phẩm)'
                ]);
            }
            if ($request->ajax())
            {
                $rating               = new Rating();
                $rating->r_user_id    = \Auth::id();
                $rating->r_product_id = $request->product_id;
                $rating->r_number     = $request->review;
                $rating->r_content    = $request->content_review;
                $rating->created_at   = Carbon::now();
                $rating->save();

                if ($rating->id) {
                    $html = view('frontend.pages.product_detail.include._inc_rating_item',compact('rating'))->render();
                    $this->staticRatingProduct($request->product_id, $request->review);
                }
                return response([
                    'html'     => $html ?? null,
                    'messages' => 'Đánh giá sản phẩm thành công'
                ]);
            }
        } catch (Exception $e) {
            return response([
                'html'     => $html ?? null,
                'messages' => 'Đánh giá sản phẩm thất bại!'
            ]);
        }

    }

    public function staticRatingProduct($productID, $number)
    {
        $product =  Product::find($productID);
        $product->pro_review_total++;
        $product->pro_review_star += $number;
        $product->save();

        $product->pro_age_review = round($product->pro_review_star / $product->pro_review_total,0);
        $product->save();
    }
}
